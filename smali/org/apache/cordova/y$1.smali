.class final Lorg/apache/cordova/y$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/y;->a(Ljava/lang/String;)Z
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/cordova/y;


# direct methods
.method constructor <init>(Lorg/apache/cordova/y;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lorg/apache/cordova/y$1;->a:Lorg/apache/cordova/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lorg/apache/cordova/y$1;->a:Lorg/apache/cordova/y;

    iget-object v0, v0, Lorg/apache/cordova/y;->d:Lorg/apache/cordova/x;

    invoke-static {v0}, Lorg/apache/cordova/x;->a(Lorg/apache/cordova/x;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 454
    return-void
.end method
