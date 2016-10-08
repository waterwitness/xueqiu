.class public final Lorg/apache/a/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lorg/apache/a/b/h;

.field public final b:Lorg/apache/a/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/a/b/b;

    invoke-direct {v0}, Lorg/apache/a/b/b;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/a/f;-><init>(Lorg/apache/a/b/j;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/a/b/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/a/c/c;

    invoke-direct {v0}, Lorg/apache/a/c/c;-><init>()V

    iput-object v0, p0, Lorg/apache/a/f;->b:Lorg/apache/a/c/c;

    iget-object v0, p0, Lorg/apache/a/f;->b:Lorg/apache/a/c/c;

    invoke-interface {p1, v0}, Lorg/apache/a/b/j;->a(Lorg/apache/a/c/d;)Lorg/apache/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/a/f;->a:Lorg/apache/a/b/h;

    return-void
.end method
