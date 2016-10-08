.class final Lcom/xueqiu/android/base/util/ba$1;
.super Ljava/lang/Object;
.source "UserUtil.java"

# interfaces
.implements Lcom/xueqiu/android/common/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/ba;->a(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/bb;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/g;

.field final synthetic b:Lcom/xueqiu/android/base/util/bb;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/g;Lcom/xueqiu/android/base/util/bb;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/xueqiu/android/base/util/ba$1;->a:Lcom/xueqiu/android/common/g;

    iput-object p2, p0, Lcom/xueqiu/android/base/util/ba$1;->b:Lcom/xueqiu/android/base/util/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ba$1;->a:Lcom/xueqiu/android/common/g;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/g;->dismiss()V

    .line 49
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 53
    const-string v0, "^[0-9]+(\\.[0-9]{0,2})?$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/xueqiu/android/base/util/ba$1;->b:Lcom/xueqiu/android/base/util/bb;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/xueqiu/android/base/util/bb;->a(D)V

    .line 56
    iget-object v0, p0, Lcom/xueqiu/android/base/util/ba$1;->a:Lcom/xueqiu/android/common/g;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/g;->dismiss()V

    .line 58
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 62
    const-string v1, "^[0-9]+(\\.[0-9]{0,2})?$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 64
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const-wide v4, 0x40c3880000000000L    # 10000.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 66
    :cond_0
    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 72
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 74
    array-length v2, v1

    if-eq v2, v0, :cond_0

    array-length v2, v1

    if-ne v2, v3, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
