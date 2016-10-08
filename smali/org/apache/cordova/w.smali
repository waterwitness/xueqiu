.class public final Lorg/apache/cordova/w;
.super Ljava/lang/Object;
.source "PluginEntry.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lorg/apache/cordova/g;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/w;->a:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/w;->b:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/w;->d:Z

    .line 63
    iput-object p1, p0, Lorg/apache/cordova/w;->a:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/apache/cordova/w;->b:Ljava/lang/String;

    .line 65
    iput-boolean p3, p0, Lorg/apache/cordova/w;->d:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/cordova/g;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/w;->a:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/w;->b:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    .line 53
    iput-boolean v1, p0, Lorg/apache/cordova/w;->d:Z

    .line 75
    iput-object p1, p0, Lorg/apache/cordova/w;->a:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/w;->b:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lorg/apache/cordova/w;->d:Z

    .line 79
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/f;)Lorg/apache/cordova/g;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    .line 103
    :goto_0
    return-object v0

    .line 93
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/w;->b:Ljava/lang/String;

    .line 1116
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1117
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    .line 1127
    :goto_1
    if-eqz v2, :cond_2

    .line 1128
    const-class v0, Lorg/apache/cordova/g;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 94
    :goto_2
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/g;

    iput-object v0, p0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    .line 96
    iget-object v0, p0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;

    .line 2044
    sget-boolean v2, Lorg/apache/cordova/g;->c:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/apache/cordova/g;->b:Lorg/apache/cordova/f;

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error adding plugin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/cordova/w;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 103
    goto :goto_0

    .line 1130
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 2045
    :cond_3
    :try_start_1
    iput-object p2, v0, Lorg/apache/cordova/g;->b:Lorg/apache/cordova/f;

    .line 2046
    iput-object p1, v0, Lorg/apache/cordova/g;->a:Lorg/apache/cordova/CordovaWebView;

    .line 97
    iget-object v0, p0, Lorg/apache/cordova/w;->c:Lorg/apache/cordova/g;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    move-object v2, v1

    goto :goto_1
.end method
