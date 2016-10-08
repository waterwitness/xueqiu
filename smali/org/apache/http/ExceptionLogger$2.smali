.class final Lorg/apache/http/ExceptionLogger$2;
.super Ljava/lang/Object;
.source "ExceptionLogger.java"

# interfaces
.implements Lorg/apache/http/ExceptionLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/ExceptionLogger;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    return-void
.end method
