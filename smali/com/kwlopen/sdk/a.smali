.class public final Lcom/kwlopen/sdk/a;
.super Landroid/content/ContextWrapper;
.source "CordovaContext.java"

# interfaces
.implements Lorg/apache/cordova/f;


# instance fields
.field a:Lorg/apache/cordova/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/f;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lcom/kwlopen/sdk/a;->a:Lorg/apache/cordova/f;

    .line 21
    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kwlopen/sdk/a;->a:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kwlopen/sdk/a;->a:Lorg/apache/cordova/f;

    invoke-interface {v0}, Lorg/apache/cordova/f;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kwlopen/sdk/a;->a:Lorg/apache/cordova/f;

    invoke-interface {v0, p1, p2}, Lorg/apache/cordova/f;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final startActivityForResult(Lorg/apache/cordova/g;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 24
    const-string v0, "startActivityForResult CordovaContext"

    invoke-static {v0}, Lcom/b/a/a/d;->b(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/kwlopen/sdk/a;->a:Lorg/apache/cordova/f;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/cordova/f;->startActivityForResult(Lorg/apache/cordova/g;Landroid/content/Intent;I)V

    .line 26
    return-void
.end method
