.class final Lcom/xueqiu/android/base/util/c$1;
.super Ljava/lang/Object;
.source "BuglyCrashHandleCallback.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/base/util/c;
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/xueqiu/android/base/util/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/util/c;JJ)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/xueqiu/android/base/util/c$1;->c:Lcom/xueqiu/android/base/util/c;

    iput-wide p2, p0, Lcom/xueqiu/android/base/util/c$1;->a:J

    iput-wide p4, p0, Lcom/xueqiu/android/base/util/c$1;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    iget-wide v2, p0, Lcom/xueqiu/android/base/util/c$1;->a:J

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sub-long v0, v2, v0

    iget-wide v2, p0, Lcom/xueqiu/android/base/util/c$1;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
