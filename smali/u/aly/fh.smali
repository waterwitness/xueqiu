.class public final Lu/aly/fh;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lu/aly/gm;

.field private c:Lu/aly/ga;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lu/aly/fw;

    invoke-direct {v0}, Lu/aly/fw;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/fh;-><init>(Lu/aly/gd;)V

    .line 59
    return-void
.end method

.method private constructor <init>(Lu/aly/gd;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lu/aly/fh;->a:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, Lu/aly/gm;

    iget-object v1, p0, Lu/aly/fh;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lu/aly/gm;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lu/aly/fh;->b:Lu/aly/gm;

    .line 68
    iget-object v0, p0, Lu/aly/fh;->b:Lu/aly/gm;

    invoke-interface {p1, v0}, Lu/aly/gd;->a(Lu/aly/go;)Lu/aly/ga;

    move-result-object v0

    iput-object v0, p0, Lu/aly/fh;->c:Lu/aly/ga;

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Lu/aly/fa;)[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lu/aly/fh;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 82
    iget-object v0, p0, Lu/aly/fh;->c:Lu/aly/ga;

    invoke-interface {p1, v0}, Lu/aly/fa;->b(Lu/aly/ga;)V

    .line 83
    iget-object v0, p0, Lu/aly/fh;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
