#include "../modules/CommonSchema.ligo"
#include "../modules/FarmingStorageSchema.ligo"
#include "../modules/ControllerSchema.ligo"
#include "../modules/ControllerMethods.ligo"

function main(const action : controller_action; const s : controller_storage) : controller_return is
  case action of
  | DeployFarming(params)                       -> deploy_farming(params, s)
  | ChangeFarmAdmin(params)                     -> change_farm_admin(params, s)
  | ChangeRPSAndCoefficient(params)             -> change_rps_and_coefficient(params, s)
  | ChangeAdmin(params)                         -> change_admin(params, s)
  | BurnPauls(params)                           -> burn_pauls(params, s)
  end
