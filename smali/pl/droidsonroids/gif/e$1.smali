.class final Lpl/droidsonroids/gif/e$1;
.super Ljava/lang/Object;
.source "GifTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/gif/e;->run()V
.end annotation


# instance fields
.field final synthetic a:Lpl/droidsonroids/gif/GifTextureView;

.field final synthetic b:Lpl/droidsonroids/gif/e;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/e;Lpl/droidsonroids/gif/GifTextureView;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lpl/droidsonroids/gif/e$1;->b:Lpl/droidsonroids/gif/e;

    iput-object p2, p0, Lpl/droidsonroids/gif/e$1;->a:Lpl/droidsonroids/gif/GifTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lpl/droidsonroids/gif/e$1;->a:Lpl/droidsonroids/gif/GifTextureView;

    iget-object v1, p0, Lpl/droidsonroids/gif/e$1;->b:Lpl/droidsonroids/gif/e;

    invoke-static {v1}, Lpl/droidsonroids/gif/e;->a(Lpl/droidsonroids/gif/e;)Lpl/droidsonroids/gif/GifInfoHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lpl/droidsonroids/gif/GifTextureView;->a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifInfoHandle;)V

    .line 203
    return-void
.end method
