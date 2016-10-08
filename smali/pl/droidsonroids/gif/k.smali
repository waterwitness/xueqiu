.class public final Lpl/droidsonroids/gif/k;
.super Lpl/droidsonroids/gif/i;
.source "InputSource.java"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation

        .annotation build Landroid/support/annotation/RawRes;
        .end annotation
    .end param

    .prologue
    .line 229
    invoke-direct {p0}, Lpl/droidsonroids/gif/i;-><init>()V

    .line 230
    iput-object p1, p0, Lpl/droidsonroids/gif/k;->a:Landroid/content/res/Resources;

    .line 231
    iput p2, p0, Lpl/droidsonroids/gif/k;->b:I

    .line 232
    return-void
.end method


# virtual methods
.method final a()Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lpl/droidsonroids/gif/k;->a:Landroid/content/res/Resources;

    iget v1, p0, Lpl/droidsonroids/gif/k;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a(Landroid/content/res/AssetFileDescriptor;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
