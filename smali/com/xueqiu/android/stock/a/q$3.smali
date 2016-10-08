.class final Lcom/xueqiu/android/stock/a/q$3;
.super Ljava/lang/Object;
.source "PortfolioListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/stock/a/q;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/stock/a/q;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/a/q;I)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/xueqiu/android/stock/a/q$3;->b:Lcom/xueqiu/android/stock/a/q;

    iput p2, p0, Lcom/xueqiu/android/stock/a/q$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/stock/a/q$3;->b:Lcom/xueqiu/android/stock/a/q;

    invoke-static {v1}, Lcom/xueqiu/android/stock/a/q;->e(Lcom/xueqiu/android/stock/a/q;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07044a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    const/4 v2, 0x0

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/stock/a/q$3$1;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/stock/a/q$3$1;-><init>(Lcom/xueqiu/android/stock/a/q$3;)V

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 292
    return-void
.end method
