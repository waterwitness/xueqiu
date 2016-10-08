.class final Landroid/support/v7/internal/view/menu/x;
.super Landroid/support/v7/internal/view/menu/m;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/internal/view/menu/m",
        "<",
        "Landroid/support/v4/view/ap;",
        ">;",
        "Landroid/view/MenuItem$OnActionExpandListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/u;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/view/menu/u;Landroid/support/v4/view/ap;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/internal/view/menu/u;

    .line 378
    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/m;-><init>(Ljava/lang/Object;)V

    .line 379
    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->c:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/view/ap;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/internal/view/menu/u;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/u;->a(Landroid/view/MenuItem;)Landroid/support/v4/c/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ap;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/x;->c:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/view/ap;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/x;->a:Landroid/support/v7/internal/view/menu/u;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/u;->a(Landroid/view/MenuItem;)Landroid/support/v4/c/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ap;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
