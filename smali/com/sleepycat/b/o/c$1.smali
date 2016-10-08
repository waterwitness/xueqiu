.class final Lcom/sleepycat/b/o/c$1;
.super Ljava/util/logging/ErrorManager;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/o/c;-><init>(Ljava/lang/String;IILjava/util/logging/Formatter;Lcom/sleepycat/b/c/ad;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sleepycat/b/o/c;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/o/c;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sleepycat/b/o/c$1;->a:Lcom/sleepycat/b/o/c;

    invoke-direct {p0}, Ljava/util/logging/ErrorManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 3

    .prologue
    .line 89
    sget-boolean v0, Lcom/sleepycat/b/o/c;->a:Z

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FileHandler stifled exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method
