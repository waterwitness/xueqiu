.class final Lcom/xueqiu/android/stock/PrivateFundActivity$5$1;
.super Ljava/lang/Object;
.source "PrivateFundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity$5;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/PrivateFundActivity$5;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity$5;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$5$1;->a:Lcom/xueqiu/android/stock/PrivateFundActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$5$1;->a:Lcom/xueqiu/android/stock/PrivateFundActivity$5;

    iget-object v0, v0, Lcom/xueqiu/android/stock/PrivateFundActivity$5;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$5$1;->a:Lcom/xueqiu/android/stock/PrivateFundActivity$5;

    iget-object v1, v1, Lcom/xueqiu/android/stock/PrivateFundActivity$5;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->k(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->b(Lcom/xueqiu/android/stock/PrivateFundActivity;Lcom/xueqiu/android/community/model/User;)V

    .line 546
    return-void
.end method
