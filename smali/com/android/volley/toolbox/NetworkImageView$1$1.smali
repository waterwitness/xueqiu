.class final Lcom/android/volley/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/NetworkImageView$1;->a(Lcom/android/volley/toolbox/m;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/toolbox/m;

.field final synthetic b:Lcom/android/volley/toolbox/NetworkImageView$1;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView$1;Lcom/android/volley/toolbox/m;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->b:Lcom/android/volley/toolbox/NetworkImageView$1;

    iput-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->a:Lcom/android/volley/toolbox/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->b:Lcom/android/volley/toolbox/NetworkImageView$1;

    iget-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->a:Lcom/android/volley/toolbox/m;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/NetworkImageView$1;->a(Lcom/android/volley/toolbox/m;Z)V

    .line 169
    return-void
.end method
