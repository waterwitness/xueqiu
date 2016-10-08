.class final Landroid/support/v7/internal/view/menu/aa;
.super Landroid/support/v7/internal/view/menu/v;
.source "MenuItemWrapperJB.java"

# interfaces
.implements Landroid/support/v4/view/l;


# instance fields
.field c:Landroid/view/ActionProvider$VisibilityListener;

.field final synthetic d:Landroid/support/v7/internal/view/menu/z;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/z;Landroid/support/v4/view/j;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/aa;->d:Landroid/support/v7/internal/view/menu/z;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/v;-><init>(Landroid/support/v7/internal/view/menu/u;Landroid/support/v4/view/j;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final isVisible()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public final onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aa;->a:Landroid/support/v4/view/j;

    invoke-virtual {v0}, Landroid/support/v4/view/j;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final overridesItemVisibility()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final refreshVisibility()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/aa;->c:Landroid/view/ActionProvider$VisibilityListener;

    .line 66
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/aa;->a:Landroid/support/v4/view/j;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/support/v4/view/j;->a(Landroid/support/v4/view/l;)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method
