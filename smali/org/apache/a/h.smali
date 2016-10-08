.class public final Lorg/apache/a/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lorg/apache/a/c/a;

.field private c:Lorg/apache/a/b/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/apache/a/b/b;

    invoke-direct {v0}, Lorg/apache/a/b/b;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/a/h;-><init>(Lorg/apache/a/b/j;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/a/b/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/a/h;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lorg/apache/a/c/a;

    iget-object v1, p0, Lorg/apache/a/h;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lorg/apache/a/c/a;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/apache/a/h;->b:Lorg/apache/a/c/a;

    iget-object v0, p0, Lorg/apache/a/h;->b:Lorg/apache/a/c/a;

    invoke-interface {p1, v0}, Lorg/apache/a/b/j;->a(Lorg/apache/a/c/d;)Lorg/apache/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/a/h;->c:Lorg/apache/a/b/h;

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/a/b;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/a/h;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/apache/a/h;->c:Lorg/apache/a/b/h;

    invoke-interface {p1, v0}, Lorg/apache/a/b;->b(Lorg/apache/a/b/h;)V

    iget-object v0, p0, Lorg/apache/a/h;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
