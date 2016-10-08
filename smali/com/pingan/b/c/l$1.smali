.class final Lcom/pingan/b/c/l$1;
.super Ljava/lang/Object;
.source "UploadOptions.java"

# interfaces
.implements Lcom/pingan/b/c/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/b/c/l;-><init>(Lcom/pingan/b/c/i;Lcom/pingan/b/c/g;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/pingan/b/c/l;


# direct methods
.method constructor <init>(Lcom/pingan/b/c/l;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/pingan/b/c/l$1;->a:Lcom/pingan/b/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 46
    const-string v0, "up progress"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method
