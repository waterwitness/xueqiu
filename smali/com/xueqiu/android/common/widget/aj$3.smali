.class final Lcom/xueqiu/android/common/widget/aj$3;
.super Ljava/lang/Object;
.source "ShareSheet.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/aj;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xueqiu/android/common/widget/aj;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/aj;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/aj$3;->b:Lcom/xueqiu/android/common/widget/aj;

    iput-object p2, p0, Lcom/xueqiu/android/common/widget/aj$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 338
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    .line 1341
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$3;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj$3;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1346
    :goto_0
    return v0

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$3;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1344
    const/4 v0, 0x1

    goto :goto_0

    .line 1345
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$3;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 1346
    const/4 v0, -0x1

    goto :goto_0

    .line 1348
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    .line 338
    goto :goto_0
.end method
