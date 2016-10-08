.class final Lorg/apache/cordova/x$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lorg/apache/cordova/x;


# direct methods
.method constructor <init>(Lorg/apache/cordova/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lorg/apache/cordova/x$1;->e:Lorg/apache/cordova/x;

    iput-object p2, p0, Lorg/apache/cordova/x$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/x$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/x$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lorg/apache/cordova/x$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/cordova/x$1;->e:Lorg/apache/cordova/x;

    iget-object v1, p0, Lorg/apache/cordova/x$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/cordova/x$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/cordova/x$1;->c:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/cordova/x$1;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/cordova/x;->a(Lorg/apache/cordova/x;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lorg/apache/cordova/x$1;->e:Lorg/apache/cordova/x;

    invoke-static {v0}, Lorg/apache/cordova/x;->a(Lorg/apache/cordova/x;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 224
    return-void
.end method
