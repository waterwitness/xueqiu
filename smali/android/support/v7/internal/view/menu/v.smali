.class Landroid/support/v7/internal/view/menu/v;
.super Landroid/view/ActionProvider;
.source "MenuItemWrapperICS.java"


# instance fields
.field final a:Landroid/support/v4/view/j;

.field final synthetic b:Landroid/support/v7/internal/view/menu/u;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/u;Landroid/support/v4/view/j;)V
    .locals 2

    .prologue
    .line 395
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/u;

    .line 396
    invoke-virtual {p2}, Landroid/support/v4/view/j;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 397
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/j;

    .line 399
    invoke-static {p1}, Landroid/support/v7/internal/view/menu/u;->a(Landroid/support/v7/internal/view/menu/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/j;

    new-instance v1, Landroid/support/v7/internal/view/menu/v$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/v$1;-><init>(Landroid/support/v7/internal/view/menu/v;Landroid/support/v7/internal/view/menu/u;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/j;->a(Landroid/support/v4/view/l;)V

    .line 409
    :cond_0
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/u;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/u;->a(Landroid/support/v7/internal/view/menu/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/u;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/u;->a()Z

    .line 418
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->a:Landroid/support/v4/view/j;

    invoke-virtual {v0}, Landroid/support/v4/view/j;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/v;->b:Landroid/support/v7/internal/view/menu/u;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/u;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    .line 434
    return-void
.end method
