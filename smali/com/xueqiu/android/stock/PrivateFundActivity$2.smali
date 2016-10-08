.class final Lcom/xueqiu/android/stock/PrivateFundActivity$2;
.super Ljava/lang/Object;
.source "PrivateFundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/stock/PrivateFundActivity;
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$2;->b:Lcom/xueqiu/android/stock/PrivateFundActivity;

    iput-object p2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$2;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Landroid/widget/TextView;Z)V

    .line 422
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$2;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Landroid/widget/TextView;Z)V

    .line 423
    iget-object v2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$2;->b:Lcom/xueqiu/android/stock/PrivateFundActivity;

    const-string v3, "all"

    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$2;->b:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->h(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/i;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;Ljava/lang/String;J)V

    .line 424
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$2;->b:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->h(Lcom/xueqiu/android/stock/PrivateFundActivity;)Lcom/xueqiu/android/stock/i;

    move-result-object v0

    .line 2098
    iget-wide v0, v0, Lcom/xueqiu/android/stock/i;->xueqiuId:J

    goto :goto_0
.end method
