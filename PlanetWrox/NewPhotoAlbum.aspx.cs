using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _NewPhotoAlbum : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void DetailsView1_InsertItem()
    {
        photoalbum photoAlbum = new photoalbum();
        TryUpdateModel(photoAlbum);
        if (ModelState.IsValid)
        {
            using (var myEntities = new PlanetWroxEntities())
            {
                myEntities.photoalbums.Add(photoAlbum);
                myEntities.SaveChanges();
            }
            Response.Redirect(string.Format(
            "ManagePhotoAlbum?PhotoAlbumId={0}", photoAlbum.Id.ToString()));
        }
    }
}