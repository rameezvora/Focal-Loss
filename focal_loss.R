### loss function
focal_loss <-  function(gamma=2., alpha=.25){
  focal_loss_fixed <- function(y_true, y_pred){
    pt_1 = tf$where(tf$equal(y_true, 1), y_pred, tf$ones_like(y_pred))
    pt_0 = tf$where(tf$equal(y_true, 0), y_pred, tf$zeros_like(y_pred))
    return(-k_sum(alpha * k_pow(1. - pt_1, gamma) * k_log(pt_1))-k_sum((1-alpha) * k_pow( pt_0, gamma) * k_log(1. - pt_0)))
  }
  return(focal_loss_fixed)
}