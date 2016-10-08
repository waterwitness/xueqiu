.class final Landroid/support/v7/internal/view/menu/w;
.super Landroid/widget/FrameLayout;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# instance fields
.field final a:Landroid/support/v7/c/b;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    .line 443
    check-cast v0, Landroid/support/v7/c/b;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/w;->a:Landroid/support/v7/c/b;

    .line 444
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/w;->addView(Landroid/view/View;)V

    .line 445
    return-void
.end method


# virtual methods
.method public final onActionViewCollapsed()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->a:Landroid/support/v7/c/b;

    invoke-interface {v0}, Landroid/support/v7/c/b;->b()V

    .line 455
    return-void
.end method

.method public final onActionViewExpanded()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->a:Landroid/support/v7/c/b;

    invoke-interface {v0}, Landroid/support/v7/c/b;->a()V

    .line 450
    return-void
.end method
