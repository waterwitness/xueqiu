.class public final Lu/aly/fu;
.super Ljava/lang/Object;
.source "TBinaryProtocol.java"

# interfaces
.implements Lu/aly/gd;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu/aly/fu;-><init>(B)V

    .line 60
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu/aly/fu;-><init>(C)V

    .line 64
    return-void
.end method

.method private constructor <init>(C)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lu/aly/fu;->a:Z

    .line 55
    iput-boolean v1, p0, Lu/aly/fu;->b:Z

    .line 67
    iput-boolean v0, p0, Lu/aly/fu;->a:Z

    .line 68
    iput-boolean v1, p0, Lu/aly/fu;->b:Z

    .line 69
    iput v0, p0, Lu/aly/fu;->c:I

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Lu/aly/go;)Lu/aly/ga;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lu/aly/ft;

    iget-boolean v1, p0, Lu/aly/fu;->a:Z

    iget-boolean v2, p0, Lu/aly/fu;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lu/aly/ft;-><init>(Lu/aly/go;ZZ)V

    .line 74
    iget v1, p0, Lu/aly/fu;->c:I

    if-eqz v1, :cond_0

    .line 75
    iget v1, p0, Lu/aly/fu;->c:I

    invoke-virtual {v0, v1}, Lu/aly/ft;->b(I)V

    .line 77
    :cond_0
    return-object v0
.end method
