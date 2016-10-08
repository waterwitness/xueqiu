.class final Landroid/support/v7/internal/view/menu/e;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/c;

.field private b:Landroid/support/v7/internal/view/menu/g;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/c;Landroid/support/v7/internal/view/menu/g;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/e;->a:Landroid/support/v7/internal/view/menu/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/e;->b:Landroid/support/v7/internal/view/menu/g;

    .line 660
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->a:Landroid/support/v7/internal/view/menu/c;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/c;->j:Landroid/support/v7/internal/view/menu/p;

    .line 1784
    iget-object v1, v0, Landroid/support/v7/internal/view/menu/p;->c:Landroid/support/v7/internal/view/menu/q;

    if-eqz v1, :cond_0

    .line 1785
    iget-object v1, v0, Landroid/support/v7/internal/view/menu/p;->c:Landroid/support/v7/internal/view/menu/q;

    invoke-interface {v1, v0}, Landroid/support/v7/internal/view/menu/q;->a(Landroid/support/v7/internal/view/menu/p;)V

    .line 664
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->a:Landroid/support/v7/internal/view/menu/c;

    iget-object v0, v0, Landroid/support/v7/internal/view/menu/c;->n:Landroid/support/v7/internal/view/menu/af;

    check-cast v0, Landroid/view/View;

    .line 665
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->b:Landroid/support/v7/internal/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->a:Landroid/support/v7/internal/view/menu/c;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/e;->b:Landroid/support/v7/internal/view/menu/g;

    .line 2044
    iput-object v1, v0, Landroid/support/v7/internal/view/menu/c;->c:Landroid/support/v7/internal/view/menu/g;

    .line 668
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/e;->a:Landroid/support/v7/internal/view/menu/c;

    .line 3044
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/internal/view/menu/c;->e:Landroid/support/v7/internal/view/menu/e;

    .line 669
    return-void
.end method
