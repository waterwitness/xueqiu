.class public Lpl/droidsonroids/gif/GifIOException;
.super Ljava/io/IOException;
.source "GifIOException.java"


# instance fields
.field public final a:Lpl/droidsonroids/gif/c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 27
    invoke-static {p1}, Lpl/droidsonroids/gif/c;->a(I)Lpl/droidsonroids/gif/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lpl/droidsonroids/gif/GifIOException;-><init>(Lpl/droidsonroids/gif/c;)V

    .line 28
    return-void
.end method

.method private constructor <init>(Lpl/droidsonroids/gif/c;)V
    .locals 5
    .param p1    # Lpl/droidsonroids/gif/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    .line 1130
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "GifError %d: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lpl/droidsonroids/gif/c;->w:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lpl/droidsonroids/gif/c;->v:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lpl/droidsonroids/gif/GifIOException;->a:Lpl/droidsonroids/gif/c;

    .line 23
    return-void
.end method

.method static a(I)Lpl/droidsonroids/gif/GifIOException;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lpl/droidsonroids/gif/c;->a:Lpl/droidsonroids/gif/c;

    iget v0, v0, Lpl/droidsonroids/gif/c;->w:I

    if-ne p0, v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lpl/droidsonroids/gif/GifIOException;

    invoke-direct {v0, p0}, Lpl/droidsonroids/gif/GifIOException;-><init>(I)V

    goto :goto_0
.end method
