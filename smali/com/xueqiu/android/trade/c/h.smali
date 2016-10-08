.class final Lcom/xueqiu/android/trade/c/h;
.super Landroid/support/v4/a/v;
.source "PerformanceFragment.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/trade/c/g;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/trade/c/g;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/xueqiu/android/trade/c/h;->b:Lcom/xueqiu/android/trade/c/g;

    .line 342
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 343
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/h;->b:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/g;->d(Lcom/xueqiu/android/trade/c/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/PerformanceGroup;

    iget-object v1, p0, Lcom/xueqiu/android/trade/c/h;->b:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/g;->d(Lcom/xueqiu/android/trade/c/g;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/trade/c/i;->a(Lcom/xueqiu/android/trade/model/PerformanceGroup;II)Lcom/xueqiu/android/trade/c/i;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Landroid/support/v4/a/v;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/c/i;

    .line 353
    iget-object v1, p0, Lcom/xueqiu/android/trade/c/h;->b:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v1}, Lcom/xueqiu/android/trade/c/g;->b(Lcom/xueqiu/android/trade/c/g;)[Lcom/xueqiu/android/trade/c/i;

    move-result-object v1

    aput-object v0, v1, p2

    .line 354
    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/xueqiu/android/trade/c/h;->b:Lcom/xueqiu/android/trade/c/g;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c/g;->d(Lcom/xueqiu/android/trade/c/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 363
    const/4 v0, -0x2

    return v0
.end method
