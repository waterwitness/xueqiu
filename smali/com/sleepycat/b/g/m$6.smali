.class final Lcom/sleepycat/b/g/m$6;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Lcom/sleepycat/b/g/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/b/g/m;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/RandomAccessFile;
    .locals 1

    .prologue
    .line 3209
    new-instance v0, Lcom/sleepycat/b/g/n;

    invoke-direct {v0, p1, p2}, Lcom/sleepycat/b/g/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
