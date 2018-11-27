# Focal_Loss_R_keras
This is implemting focal loss in R keras.Focal loss was proposed by Lin et. al. in their Focal Loss for Dense Object Detection paper.
This loss function also works well for text classification with Unbalanced classes

# Usage
You have to compile your model with focal loss. Sample:

model %>% compile(
  loss = focal_loss(gamma=2., alpha=.25),
  metrics = c("accuracy"),
  optimizer = optimizer
  
)
