.class public final Lorg/apache/cordova/p;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"


# static fields
.field private static e:I


# instance fields
.field a:I

.field b:Z

.field final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/cordova/r;",
            ">;"
        }
    .end annotation
.end field

.field final d:[Lorg/apache/cordova/q;

.field private final f:Lorg/apache/cordova/f;

.field private final g:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/high16 v0, 0x1f400000

    sput v0, Lorg/apache/cordova/p;->e:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/f;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    .line 83
    iput-object p2, p0, Lorg/apache/cordova/p;->f:Lorg/apache/cordova/f;

    .line 84
    iput-object p1, p0, Lorg/apache/cordova/p;->g:Lorg/apache/cordova/CordovaWebView;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/cordova/q;

    iput-object v0, p0, Lorg/apache/cordova/p;->d:[Lorg/apache/cordova/q;

    .line 86
    iget-object v0, p0, Lorg/apache/cordova/p;->d:[Lorg/apache/cordova/q;

    new-instance v1, Lorg/apache/cordova/u;

    invoke-direct {v1, p0, v3}, Lorg/apache/cordova/u;-><init>(Lorg/apache/cordova/p;B)V

    aput-object v1, v0, v3

    .line 87
    iget-object v0, p0, Lorg/apache/cordova/p;->d:[Lorg/apache/cordova/q;

    const/4 v1, 0x1

    new-instance v2, Lorg/apache/cordova/s;

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/s;-><init>(Lorg/apache/cordova/p;B)V

    aput-object v2, v0, v1

    .line 88
    iget-object v0, p0, Lorg/apache/cordova/p;->d:[Lorg/apache/cordova/q;

    const/4 v1, 0x2

    new-instance v2, Lorg/apache/cordova/t;

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/t;-><init>(Lorg/apache/cordova/p;B)V

    aput-object v2, v0, v1

    .line 89
    iget-object v0, p0, Lorg/apache/cordova/p;->d:[Lorg/apache/cordova/q;

    const/4 v1, 0x3

    new-instance v2, Lorg/apache/cordova/v;

    invoke-direct {v2, p0, v3}, Lorg/apache/cordova/v;-><init>(Lorg/apache/cordova/p;B)V

    aput-object v2, v0, v1

    .line 90
    invoke-virtual {p0}, Lorg/apache/cordova/p;->a()V

    .line 91
    return-void
.end method

.method static synthetic a(Lorg/apache/cordova/p;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/cordova/p;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 181
    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x0

    monitor-exit p0

    .line 215
    :goto_0
    return-object v0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    move v3, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/r;

    .line 187
    invoke-virtual {v0}, Lorg/apache/cordova/r;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    .line 188
    if-lez v5, :cond_1

    add-int v6, v3, v0

    sget v7, Lorg/apache/cordova/p;->e:I

    if-le v6, v7, :cond_1

    sget v6, Lorg/apache/cordova/p;->e:I

    if-gtz v6, :cond_2

    .line 191
    :cond_1
    add-int/2addr v3, v0

    .line 192
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    .line 193
    goto :goto_1

    .line 194
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v5, v0, :cond_3

    move v4, v1

    .line 195
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    move v0, v2

    :goto_3
    add-int/2addr v0, v3

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v2

    .line 198
    :goto_4
    if-ge v3, v5, :cond_6

    .line 199
    iget-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/r;

    .line 200
    if-eqz v4, :cond_5

    add-int/lit8 v7, v3, 0x1

    if-ne v7, v5, :cond_5

    .line 201
    invoke-virtual {v0, v6}, Lorg/apache/cordova/r;->a(Ljava/lang/StringBuilder;)V

    .line 198
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_3
    move v4, v2

    .line 194
    goto :goto_2

    .line 195
    :cond_4
    const/16 v0, 0x64

    goto :goto_3

    .line 203
    :cond_5
    const-string v7, "try{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0, v6}, Lorg/apache/cordova/r;->a(Ljava/lang/StringBuilder;)V

    .line 205
    const-string v0, "}finally{"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 208
    :cond_6
    if-nez v4, :cond_7

    .line 209
    :try_start_1
    const-string v0, "window.setTimeout(function(){cordova.require(\'cordova/plugin/android/polling\').pollOnce();},0);"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_7
    if-eqz v4, :cond_8

    move v0, v1

    :goto_6
    if-ge v0, v5, :cond_9

    .line 212
    const/16 v1, 0x7d

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    move v0, v2

    goto :goto_6

    .line 214
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method static synthetic b(Lorg/apache/cordova/p;)Lorg/apache/cordova/CordovaWebView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/cordova/p;->g:Lorg/apache/cordova/CordovaWebView;

    return-object v0
.end method

.method static synthetic c(Lorg/apache/cordova/p;)Lorg/apache/cordova/f;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/cordova/p;->f:Lorg/apache/cordova/f;

    return-object v0
.end method

.method static synthetic d(Lorg/apache/cordova/p;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v4, 0x53

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/p;->d:[Lorg/apache/cordova/q;

    iget v1, p0, Lorg/apache/cordova/p;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/q;->a(Z)V

    .line 146
    iget-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x0

    monitor-exit p0

    .line 171
    :goto_0
    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v7, v2

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/r;

    .line 1126
    invoke-virtual {v0}, Lorg/apache/cordova/r;->a()I

    move-result v0

    .line 1127
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1128
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    .line 153
    if-lez v7, :cond_1

    add-int v6, v1, v0

    sget v8, Lorg/apache/cordova/p;->e:I

    if-le v6, v8, :cond_1

    sget v6, Lorg/apache/cordova/p;->e:I

    if-gtz v6, :cond_2

    .line 156
    :cond_1
    add-int/2addr v1, v0

    .line 157
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    .line 158
    goto :goto_1

    .line 160
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v2

    .line 161
    :goto_2
    if-ge v1, v7, :cond_9

    .line 162
    iget-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/r;

    .line 1132
    invoke-virtual {v0}, Lorg/apache/cordova/r;->a()I

    move-result v3

    .line 1133
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x20

    .line 1134
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1440
    iget-object v3, v0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    if-nez v3, :cond_3

    .line 1441
    const/16 v3, 0x4a

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lorg/apache/cordova/r;->a:Ljava/lang/String;

    .line 1442
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1445
    :cond_3
    iget-object v3, v0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 2088
    iget v9, v3, Lorg/apache/cordova/z;->a:I

    .line 1446
    sget v3, Lorg/apache/cordova/aa;->a:I

    add-int/lit8 v3, v3, -0x1

    if-ne v9, v3, :cond_5

    move v6, v5

    .line 1447
    :goto_4
    sget v3, Lorg/apache/cordova/aa;->b:I

    add-int/lit8 v3, v3, -0x1

    if-ne v9, v3, :cond_6

    move v3, v5

    .line 1448
    :goto_5
    iget-object v10, v0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 2111
    iget-boolean v10, v10, Lorg/apache/cordova/z;->c:Z

    .line 1450
    if-nez v6, :cond_4

    if-eqz v3, :cond_7

    :cond_4
    move v3, v4

    :goto_6
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v10, :cond_8

    const/16 v3, 0x31

    .line 1451
    :goto_7
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1452
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x20

    .line 1453
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lorg/apache/cordova/r;->a:Ljava/lang/String;

    .line 1454
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x20

    .line 1455
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1456
    iget-object v3, v0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 3092
    iget v3, v3, Lorg/apache/cordova/z;->b:I

    .line 1456
    packed-switch v3, :pswitch_data_0

    .line 1481
    :pswitch_0
    iget-object v0, v0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    invoke-virtual {v0}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move v6, v2

    .line 1446
    goto :goto_4

    :cond_6
    move v3, v2

    .line 1447
    goto :goto_5

    .line 1450
    :cond_7
    const/16 v3, 0x46

    goto :goto_6

    :cond_8
    const/16 v3, 0x30

    goto :goto_7

    .line 1458
    :pswitch_1
    :try_start_1
    iget-object v0, v0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    invoke-virtual {v0}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1461
    :pswitch_2
    const/16 v0, 0x4e

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1464
    :pswitch_3
    const/16 v3, 0x6e

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 1465
    invoke-virtual {v0}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1468
    :pswitch_4
    const/16 v3, 0x73

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1469
    iget-object v0, v0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    .line 3107
    iget-object v0, v0, Lorg/apache/cordova/z;->d:Ljava/lang/String;

    .line 1469
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1472
    :pswitch_5
    const/16 v3, 0x53

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1473
    iget-object v0, v0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    invoke-virtual {v0}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1476
    :pswitch_6
    const/16 v3, 0x41

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1477
    iget-object v0, v0, Lorg/apache/cordova/r;->b:Lorg/apache/cordova/z;

    invoke-virtual {v0}, Lorg/apache/cordova/z;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 166
    :cond_9
    iget-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 168
    const/16 v0, 0x2a

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 120
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/cordova/p;->a(I)V

    .line 121
    iget-object v0, p0, Lorg/apache/cordova/p;->d:[Lorg/apache/cordova/q;

    iget v1, p0, Lorg/apache/cordova/p;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/cordova/q;->b()V

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 97
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/p;->d:[Lorg/apache/cordova/q;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 98
    :cond_0
    const-string v0, "JsMessageQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid NativeToJsBridgeMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    iget v0, p0, Lorg/apache/cordova/p;->a:I

    if-eq p1, v0, :cond_1

    .line 101
    const-string v0, "JsMessageQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set native->JS mode to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iput p1, p0, Lorg/apache/cordova/p;->a:I

    .line 104
    iget-object v0, p0, Lorg/apache/cordova/p;->d:[Lorg/apache/cordova/q;

    aget-object v0, v0, p1

    .line 105
    invoke-virtual {v0}, Lorg/apache/cordova/q;->b()V

    .line 106
    iget-boolean v1, p0, Lorg/apache/cordova/p;->b:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 107
    invoke-virtual {v0}, Lorg/apache/cordova/q;->a()V

    .line 109
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/apache/cordova/p;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 264
    const-string v0, "JsMessageQueue"

    const-string v1, "nested call to setPaused detected."

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    :cond_0
    iput-boolean p1, p0, Lorg/apache/cordova/p;->b:Z

    .line 267
    if-nez p1, :cond_2

    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/p;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lorg/apache/cordova/p;->d:[Lorg/apache/cordova/q;

    iget v1, p0, Lorg/apache/cordova/p;->a:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/apache/cordova/q;->a()V

    .line 272
    :cond_1
    monitor-exit p0

    .line 274
    :cond_2
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
