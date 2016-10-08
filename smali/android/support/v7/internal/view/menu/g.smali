.class final Landroid/support/v7/internal/view/menu/g;
.super Landroid/support/v7/internal/view/menu/ab;
.source "ActionMenuPresenter.java"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/c;Landroid/content/Context;Landroid/support/v7/internal/view/menu/p;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 606
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/c;

    .line 607
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Landroid/support/v7/internal/view/menu/ab;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/p;Landroid/view/View;Z)V

    .line 608
    iget-object v0, p1, Landroid/support/v7/internal/view/menu/c;->f:Landroid/support/v7/internal/view/menu/h;

    .line 1229
    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ab;->c:Landroid/support/v7/internal/view/menu/ae;

    .line 609
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 613
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/ab;->onDismiss()V

    .line 614
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/c;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/c;->j:Landroid/support/v7/internal/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/p;->close()V

    .line 615
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/c;

    .line 2044
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/internal/view/menu/c;->c:Landroid/support/v7/internal/view/menu/g;

    .line 616
    return-void
.end method
