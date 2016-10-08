.class final Lcom/xueqiu/android/stock/PrivateFundActivity$3;
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
    .line 426
    iput-object p1, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$3;->b:Lcom/xueqiu/android/stock/PrivateFundActivity;

    iput-object p2, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$3;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Landroid/widget/TextView;Z)V

    .line 430
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$3;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Landroid/widget/TextView;Z)V

    .line 431
    iget-object v0, p0, Lcom/xueqiu/android/stock/PrivateFundActivity$3;->b:Lcom/xueqiu/android/stock/PrivateFundActivity;

    const-string v1, "all"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xueqiu/android/stock/PrivateFundActivity;->a(Lcom/xueqiu/android/stock/PrivateFundActivity;Ljava/lang/String;J)V

    .line 432
    return-void
.end method
