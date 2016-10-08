.class public Lcom/tencent/record/debug/WnsTracer;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/tencent/record/debug/TraceLevel;


# static fields
.field protected static final b:Lcom/tencent/record/debug/FileTracerConfig;

.field protected static final c:Lcom/tencent/record/debug/FileTracerConfig;


# instance fields
.field private volatile a:Z

.field protected d:Lcom/tencent/record/debug/FileTracer;

.field private volatile e:Z

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v6, 0x2710

    const/high16 v3, 0x40000

    const/16 v4, 0x2000

    const/16 v2, 0x18

    const/16 v8, 0xa

    .line 128
    invoke-static {}, Lcom/tencent/record/debug/WnsTracer;->c()Ljava/io/File;

    move-result-object v1

    .line 130
    new-instance v0, Lcom/tencent/record/debug/FileTracerConfig;

    const-string v5, "OpenSDK.Client.File.Tracer"

    const-string v9, ".app.log"

    const-wide/32 v10, 0x240c8400

    invoke-direct/range {v0 .. v11}, Lcom/tencent/record/debug/FileTracerConfig;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v0, Lcom/tencent/record/debug/WnsTracer;->b:Lcom/tencent/record/debug/FileTracerConfig;

    .line 134
    new-instance v0, Lcom/tencent/record/debug/FileTracerConfig;

    const-string v5, "OpenSDK.File.Tracer"

    const-string v9, ".OpenSDK.log"

    const-wide/32 v10, 0x240c8400

    invoke-direct/range {v0 .. v11}, Lcom/tencent/record/debug/FileTracerConfig;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v0, Lcom/tencent/record/debug/WnsTracer;->c:Lcom/tencent/record/debug/FileTracerConfig;

    .line 137
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->a:Z

    .line 142
    iput-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->e:Z

    .line 143
    iput-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->f:Z

    .line 149
    return-void
.end method

.method public static c()Ljava/io/File;
    .locals 6

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/record/info/Const$Debug;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/record/info/Global;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {}, Lcom/tencent/record/info/StorageDash;->b()Lcom/tencent/record/info/StorageInfo;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2}, Lcom/tencent/record/info/StorageInfo;->c()J

    move-result-wide v2

    const-wide/32 v4, 0x800000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 110
    :cond_0
    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/record/info/Global;->c()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/tencent/record/debug/WnsTracer;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/tencent/record/debug/WnsTracer;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->d:Lcom/tencent/record/debug/FileTracer;

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/tencent/record/debug/WnsTracer;->d:Lcom/tencent/record/debug/FileTracer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/record/debug/FileTracer;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/record/debug/WnsTracer;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v1, Lcom/tencent/record/debug/LogcatTracer;->a:Lcom/tencent/record/debug/LogcatTracer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/record/debug/LogcatTracer;->b(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->d:Lcom/tencent/record/debug/FileTracer;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->d:Lcom/tencent/record/debug/FileTracer;

    invoke-virtual {v0}, Lcom/tencent/record/debug/FileTracer;->a()V

    .line 156
    iget-object v0, p0, Lcom/tencent/record/debug/WnsTracer;->d:Lcom/tencent/record/debug/FileTracer;

    invoke-virtual {v0}, Lcom/tencent/record/debug/FileTracer;->b()V

    .line 158
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->a:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->e:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/tencent/record/debug/WnsTracer;->f:Z

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 230
    const-string v0, "debug.file.tracelevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "debug.file.tracelevel"

    const/16 v1, 0x3f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 234
    const/16 v1, 0x8

    const-string v2, "WnsTracer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File Trace Level Changed = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/tencent/record/debug/WnsTracer;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    iget-object v1, p0, Lcom/tencent/record/debug/WnsTracer;->d:Lcom/tencent/record/debug/FileTracer;

    invoke-virtual {v1, v0}, Lcom/tencent/record/debug/FileTracer;->a(I)V

    .line 238
    :cond_0
    return-void
.end method
