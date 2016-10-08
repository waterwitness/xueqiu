.class final Lcom/sleepycat/b/g/m$5;
.super Lcom/sleepycat/b/g/j;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/g/m;->f(J)Lcom/sleepycat/b/g/j;
.end annotation


# instance fields
.field final synthetic f:Lcom/sleepycat/b/g/m;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/g/m;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/sleepycat/b/g/m$5;->f:Lcom/sleepycat/b/g/m;

    invoke-direct {p0, p2, p3, p4}, Lcom/sleepycat/b/g/j;-><init>(JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1180
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/b/g/m$5;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
