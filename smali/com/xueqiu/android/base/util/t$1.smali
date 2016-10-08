.class final Lcom/xueqiu/android/base/util/t$1;
.super Ljava/util/LinkedHashMap;
.source "LRUCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/util/t;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xueqiu/android/base/util/t;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/t;)V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 21
    iput-object p1, p0, Lcom/xueqiu/android/base/util/t$1;->b:Lcom/xueqiu/android/base/util/t;

    iput v2, p0, Lcom/xueqiu/android/base/util/t$1;->a:I

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/xueqiu/android/base/util/t$1;->size()I

    move-result v0

    iget v1, p0, Lcom/xueqiu/android/base/util/t$1;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
