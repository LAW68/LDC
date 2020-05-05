using Ninject.Modules;
using StringValidator.Interface;

namespace Production
{
    public class ValidationNinjectModule : NinjectModule
    {
        public override void Load()
        {
            Kernel.Bind<IStringValidator>().To<StringValidator.StringValidator>().InThreadScope();
        }
    }
}
