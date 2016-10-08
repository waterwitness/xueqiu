.class final Lcom/xueqiu/android/stock/PrivateFundActivity$15;
.super Ljava/lang/Object;
.source "PrivateFundActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$15;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$15;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->t(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/common/widget/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$15;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->t(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/common/widget/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/z;->dismiss()V

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$15;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->finish()V

    .line 934
    return-void
.end method
