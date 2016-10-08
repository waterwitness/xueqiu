.class public final Lorg/apache/a/a/g;
.super Lorg/apache/a/a/c;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/a/b;",
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
            "Lorg/apache/a/b;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/apache/a/a/c;-><init>(B)V

    iput-object p1, p0, Lorg/apache/a/a/g;->a:Ljava/lang/Class;

    return-void
.end method
