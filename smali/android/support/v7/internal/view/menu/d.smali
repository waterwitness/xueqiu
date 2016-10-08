.class final Landroid/support/v7/internal/view/menu/d;
.super Landroid/support/v7/internal/view/menu/s;
.source "ActionMenuPresenter.java"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/c;Landroid/support/v7/internal/view/menu/aj;)V
    .locals 1

    .prologue
    .line 621
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/c;

    .line 622
    invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/s;-><init>(Landroid/support/v7/internal/view/menu/p;)V

    .line 623
    iget-object v0, p1, Landroid/support/v7/internal/view/menu/c;->f:Landroid/support/v7/internal/view/menu/h;

    .line 1150
    iput-object v0, p1, Landroid/support/v7/internal/view/menu/k;->m:Landroid/support/v7/internal/view/menu/ae;

    .line 624
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 628
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/s;->onDismiss(Landroid/content/DialogInterface;)V

    .line 629
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/c;

    .line 2044
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/internal/view/menu/c;->d:Landroid/support/v7/internal/view/menu/d;

    .line 630
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/d;->a:Landroid/support/v7/internal/view/menu/c;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/internal/view/menu/c;->g:I

    .line 631
    return-void
.end method
