# Focal-Loss
This is the keras implementation of focal loss proposed by Lin et. al. in their Focal Loss for Dense Object Detection paper.

# Usage
You have to compile your model with focal loss. Sample:

model %>% compile(
  loss = focal_loss(gamma=2., alpha=.25),
  metrics = c("accuracy"),
  optimizer = optimizer
  
)
