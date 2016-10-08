.class final Lcom/pingan/b/c/f$1;
.super Ljava/lang/Object;
.source "ResumeUploader.java"

# interfaces
.implements Lcom/pingan/b/c/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/b/c/f;-><init>(Lcom/pingan/b/a/f;Lcom/pingan/b/c/a;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/pingan/b/c/j;Lcom/pingan/b/c/h;Lcom/pingan/b/c/l;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/pingan/b/c/h;

.field final synthetic b:Lcom/pingan/b/c/f;


# direct methods
.method constructor <init>(Lcom/pingan/b/c/f;Lcom/pingan/b/c/h;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/pingan/b/c/f$1;->b:Lcom/pingan/b/c/f;

    iput-object p2, p0, Lcom/pingan/b/c/f$1;->a:Lcom/pingan/b/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pingan/b/c/f$1;->b:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->a(Lcom/pingan/b/c/f;)Ljava/io/RandomAccessFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/pingan/b/c/f$1;->b:Lcom/pingan/b/c/f;

    invoke-static {v0}, Lcom/pingan/b/c/f;->a(Lcom/pingan/b/c/f;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/pingan/b/c/f$1;->a:Lcom/pingan/b/c/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/pingan/b/c/h;->a(Ljava/lang/String;Lcom/pingan/b/a/m;Lorg/json/JSONObject;)V

    .line 84
    return-void

    .line 80
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
