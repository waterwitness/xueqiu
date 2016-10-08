.class final Lcom/xueqiu/android/stock/j;
.super Landroid/support/v4/a/v;
.source "PrivateFundActivity.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/stock/PrivateFundActivity;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/PrivateFundActivity;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/xueqiu/android/stock/j;->b:Lcom/xueqiu/android/stock/PrivateFundActivity;

    .line 1060
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 1061
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/xueqiu/android/stock/j;->b:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->u(Lcom/xueqiu/android/stock/PrivateFundActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/j;->b:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/PrivateFundActivity;->u(Lcom/xueqiu/android/stock/PrivateFundActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/a/i;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/xueqiu/android/stock/j;->b:Lcom/xueqiu/android/stock/PrivateFundActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/PrivateFundActivity;->u(Lcom/xueqiu/android/stock/PrivateFundActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
