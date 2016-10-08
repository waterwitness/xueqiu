.class final Lcom/xueqiu/android/stock/r;
.super Landroid/support/v4/a/v;
.source "USETFRankActivity.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/stock/USETFRankActivity;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/USETFRankActivity;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/xueqiu/android/stock/r;->b:Lcom/xueqiu/android/stock/USETFRankActivity;

    .line 39
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/xueqiu/android/stock/r;->b:Lcom/xueqiu/android/stock/USETFRankActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/USETFRankActivity;->a(Lcom/xueqiu/android/stock/USETFRankActivity;)[Landroid/support/v4/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/r;->b:Lcom/xueqiu/android/stock/USETFRankActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/USETFRankActivity;->a(Lcom/xueqiu/android/stock/USETFRankActivity;)[Landroid/support/v4/a/i;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/xueqiu/android/stock/r;->b:Lcom/xueqiu/android/stock/USETFRankActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/USETFRankActivity;->b(Lcom/xueqiu/android/stock/USETFRankActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/xueqiu/android/stock/r;->b:Lcom/xueqiu/android/stock/USETFRankActivity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/USETFRankActivity;->b(Lcom/xueqiu/android/stock/USETFRankActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/r;->b:Lcom/xueqiu/android/stock/USETFRankActivity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/USETFRankActivity;->a(Lcom/xueqiu/android/stock/USETFRankActivity;)[Landroid/support/v4/a/i;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method
