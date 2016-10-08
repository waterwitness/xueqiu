.class final Lcom/xueqiu/android/stock/PrivateFundActivity$6;
.super Ljava/lang/Object;
.source "PrivateFundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 555
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$6;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 558
    invoke-static {}, Lcom/xueqiu/android/stock/PrivateFundActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$6;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->h(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/i;

    move-result-object v1

    .line 2114
    iget-wide v2, v1, Lcom/xueqiu/android/stock/i;->investmentXueqiuId:J

    .line 558
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/stock/PrivateFundActivity$6$1;

    iget-object v3, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$6;->a:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/stock/PrivateFundActivity$6$1;-><init>(Lcom/xueqiu/android/stock/PrivateFundActivity$6;Lcom/xueqiu/android/base/b/q;)V

    .line 2934
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 570
    return-void
.end method
