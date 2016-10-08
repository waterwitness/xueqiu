.class public final Lcom/sleepycat/b/c/z;
.super Ljava/lang/Object;
.source "DupKeyData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lcom/sleepycat/b/c/z;->a:Ljava/util/Comparator;

    .line 260
    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 254
    check-cast p1, [B

    check-cast p2, [B

    .line 1264
    iget-object v0, p0, Lcom/sleepycat/b/c/z;->a:Ljava/util/Comparator;

    invoke-static {p1, p2, v0}, Lcom/sleepycat/b/c/y;->a([B[BLjava/util/Comparator;)I

    move-result v0

    .line 1266
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 254
    goto :goto_0
.end method
