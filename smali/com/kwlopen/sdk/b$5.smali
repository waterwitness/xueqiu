.class final Lcom/kwlopen/sdk/b$5;
.super Ljava/lang/Object;
.source "KwlOpenCordovaPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/b;->a(IILandroid/content/Intent;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/kwlopen/sdk/b;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/b;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/kwlopen/sdk/b$5;->a:Lcom/kwlopen/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/kwlopen/sdk/b$5;->a:Lcom/kwlopen/sdk/b;

    invoke-static {v0}, Lcom/kwlopen/sdk/b;->a(Lcom/kwlopen/sdk/b;)Lorg/apache/cordova/b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwlopen/sdk/b$5;->a:Lcom/kwlopen/sdk/b;

    invoke-static {v1}, Lcom/kwlopen/sdk/b;->b(Lcom/kwlopen/sdk/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/b;->a(Ljava/lang/String;)V

    .line 280
    return-void
.end method
