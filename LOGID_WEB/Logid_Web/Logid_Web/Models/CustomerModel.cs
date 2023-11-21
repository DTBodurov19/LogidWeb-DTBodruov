using System.ComponentModel.DataAnnotations;
namespace Logid_Web.Models
{
    public class CustomerModel
    {
        public int? CustomerID { get; set; } = null!;
        [Required(ErrorMessage = "Fill up the field")]
        [Display(Name = "Name")]
        [StringLength(30, MinimumLength = 4, ErrorMessage = "The Name needs to be longer than 4 symbols")]
        public string? Name { get; set; } = null!;
        [Required(ErrorMessage = "Fill up the field")]
        [Display(Name = "ZIP")]
        [StringLength(30, MinimumLength = 2, ErrorMessage = "The ZIP needs to be longer than 2 symbols")]
        public string? ZIP { get; set; } = null!;
        [Required(ErrorMessage = "Fill up the field")]
        [Display(Name = "Phone")]
        [StringLength(30, MinimumLength = 5, ErrorMessage = "The phone needs to be longer than 5 symbols")]
        public string? Phone { get; set; } = null!;
        [Required(ErrorMessage = "Fill up the field")]
        [Display(Name = "Address")]
        [StringLength(30, MinimumLength = 6, ErrorMessage = "The address needs to be longer than 6 symbols")]
        public string? Address { get; set; } = null!;
    }
}
