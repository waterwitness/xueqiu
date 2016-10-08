.class final Lcom/android/volley/toolbox/j$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/android/volley/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/j;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/t",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/android/volley/toolbox/j;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/volley/toolbox/j$1;->b:Lcom/android/volley/toolbox/j;

    iput-object p2, p0, Lcom/android/volley/toolbox/j$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 220
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1223
    iget-object v1, p0, Lcom/android/volley/toolbox/j$1;->b:Lcom/android/volley/toolbox/j;

    iget-object v2, p0, Lcom/android/volley/toolbox/j$1;->a:Ljava/lang/String;

    .line 2258
    iget-object v0, v1, Lcom/android/volley/toolbox/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/k;

    .line 2260
    if-eqz v0, :cond_0

    .line 2364
    iput-object p1, v0, Lcom/android/volley/toolbox/k;->a:Landroid/graphics/Bitmap;

    .line 2265
    invoke-virtual {v1, v2, v0}, Lcom/android/volley/toolbox/j;->a(Ljava/lang/String;Lcom/android/volley/toolbox/k;)V

    .line 220
    :cond_0
    return-void
.end method
