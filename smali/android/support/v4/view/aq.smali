.class final Landroid/support/v4/view/aq;
.super Ljava/lang/Object;
.source "MenuItemCompatIcs.java"


# direct methods
.method public static a(Landroid/view/MenuItem;Landroid/support/v4/view/as;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Landroid/support/v4/view/ar;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ar;-><init>(Landroid/support/v4/view/as;)V

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method
