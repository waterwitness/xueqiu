.class final Lcom/xueqiu/android/stock/a;
.super Landroid/support/v4/a/v;
.source "F10Activity.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/stock/F10Activity;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/stock/F10Activity;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/xueqiu/android/stock/a;->b:Lcom/xueqiu/android/stock/F10Activity;

    .line 57
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/stock/a;->b:Lcom/xueqiu/android/stock/F10Activity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/F10Activity;->a(Lcom/xueqiu/android/stock/F10Activity;)[Landroid/support/v4/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/a;->b:Lcom/xueqiu/android/stock/F10Activity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/F10Activity;->a(Lcom/xueqiu/android/stock/F10Activity;)[Landroid/support/v4/a/i;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/stock/a;->b:Lcom/xueqiu/android/stock/F10Activity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/F10Activity;->b(Lcom/xueqiu/android/stock/F10Activity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xueqiu/android/stock/a;->b:Lcom/xueqiu/android/stock/F10Activity;

    invoke-static {v0}, Lcom/xueqiu/android/stock/F10Activity;->b(Lcom/xueqiu/android/stock/F10Activity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/stock/a;->b:Lcom/xueqiu/android/stock/F10Activity;

    invoke-static {v1}, Lcom/xueqiu/android/stock/F10Activity;->b(Lcom/xueqiu/android/stock/F10Activity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
