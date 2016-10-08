.class final Lcom/xueqiu/android/stock/c/l;
.super Landroid/support/v4/a/v;
.source "PortfolioCategoryFragment.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/stock/c/k;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/c/k;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/xueqiu/android/stock/c/l;->b:Lcom/xueqiu/android/stock/c/k;

    .line 181
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 182
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 4

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/l;->b:Lcom/xueqiu/android/stock/c/k;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/k;->d(Lcom/xueqiu/android/stock/c/k;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/stock/c/n;->a(IJ)Lcom/xueqiu/android/stock/c/n;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/xueqiu/android/stock/c/l;->b:Lcom/xueqiu/android/stock/c/k;

    invoke-static {v1}, Lcom/xueqiu/android/stock/c/k;->d(Lcom/xueqiu/android/stock/c/k;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/stock/c/n;->a(IJ)Lcom/xueqiu/android/stock/c/n;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x2

    return v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/l;->b:Lcom/xueqiu/android/stock/c/k;

    const v1, 0x7f0700cc

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/k;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/stock/c/l;->b:Lcom/xueqiu/android/stock/c/k;

    const v1, 0x7f0703bb

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/stock/c/k;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
