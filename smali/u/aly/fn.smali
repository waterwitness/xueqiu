.class public final Lu/aly/fn;
.super Lu/aly/fp;
.source "EnumMetaData.java"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lu/aly/fp;-><init>(B)V

    .line 30
    iput-object p1, p0, Lu/aly/fn;->a:Ljava/lang/Class;

    .line 31
    return-void
.end method
