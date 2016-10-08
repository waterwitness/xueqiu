.class public final Lpl/droidsonroids/gif/j;
.super Lpl/droidsonroids/gif/i;
.source "InputSource.java"


# instance fields
.field private final a:Landroid/content/res/AssetManager;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    invoke-direct {p0}, Lpl/droidsonroids/gif/i;-><init>()V

    .line 164
    iput-object p1, p0, Lpl/droidsonroids/gif/j;->a:Landroid/content/res/AssetManager;

    .line 165
    iput-object p2, p0, Lpl/droidsonroids/gif/j;->b:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method final a()Lpl/droidsonroids/gif/GifInfoHandle;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lpl/droidsonroids/gif/j;->a:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lpl/droidsonroids/gif/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->a(Landroid/content/res/AssetFileDescriptor;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
