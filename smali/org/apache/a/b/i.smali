.class public final Lorg/apache/a/b/i;
.super Lorg/apache/a/g;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/a/g;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/a/b/i;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/a/g;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/a/b/i;->a:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/a/b/i;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/a/g;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/a/b/i;->a:I

    return-void
.end method
