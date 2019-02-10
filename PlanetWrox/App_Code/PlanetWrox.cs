﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Genre
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Genre()
    {
        this.Reviews = new HashSet<Review>();
    }

    public int Id { get; set; }
    public string Name { get; set; }
    public int SortOrder { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Review> Reviews { get; set; }
}

public partial class photoalbum
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public photoalbum()
    {
        this.Pictures = new HashSet<Picture>();
    }

    public int Id { get; set; }
    public string Name { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Picture> Pictures { get; set; }
}

public partial class Picture
{
    public int Id { get; set; }
    public string Description { get; set; }
    public string ToolTip { get; set; }
    public string ImageUrl { get; set; }
    public int PhotoAlbumId { get; set; }

    public virtual photoalbum photoalbum { get; set; }
}

public partial class Review
{
    public int Id { get; set; }
    public string Title { get; set; }
    public string Summary { get; set; }
    public string Body { get; set; }
    public int GenreId { get; set; }
    public bool Authorized { get; set; }
    public System.DateTime CreateDateTime { get; set; }
    public System.DateTime UpdateDateTime { get; set; }

    public virtual Genre Genre { get; set; }
}
