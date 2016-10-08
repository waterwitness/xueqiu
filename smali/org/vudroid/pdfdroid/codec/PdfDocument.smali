.class public Lorg/vudroid/pdfdroid/codec/PdfDocument;
.super Ljava/lang/Object;
.source "PdfDocument.java"

# interfaces
.implements Lorg/vudroid/a/a/b;


# instance fields
.field private a:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->a:J

    .line 12
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lorg/vudroid/pdfdroid/codec/PdfDocument;
    .locals 4

    .prologue
    .line 24
    :try_start_0
    new-instance v0, Lorg/vudroid/pdfdroid/codec/PdfDocument;

    const/high16 v1, 0x80000

    invoke-static {v1, p0, p1}, Lorg/vudroid/pdfdroid/codec/PdfDocument;->open(ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/vudroid/pdfdroid/codec/PdfDocument;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 44
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 45
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->a:J

    invoke-static {v0, v1}, Lorg/vudroid/pdfdroid/codec/PdfDocument;->free(J)V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native free(J)V
.end method

.method private static native getPageCount(J)I
.end method

.method private static native open(ILjava/lang/String;Ljava/lang/String;)J
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->a:J

    invoke-static {v0, v1}, Lorg/vudroid/pdfdroid/codec/PdfDocument;->getPageCount(J)I

    move-result v0

    return v0
.end method

.method public final a(I)Lorg/vudroid/a/a/c;
    .locals 3

    .prologue
    .line 15
    iget-wide v0, p0, Lorg/vudroid/pdfdroid/codec/PdfDocument;->a:J

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Lorg/vudroid/pdfdroid/codec/PdfPage;->a(JI)Lorg/vudroid/pdfdroid/codec/PdfPage;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/vudroid/pdfdroid/codec/PdfDocument;->b()V

    .line 40
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 41
    return-void
.end method
