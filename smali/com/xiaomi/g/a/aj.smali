.class public Lcom/xiaomi/g/a/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lorg/apache/a/b",
        "<",
        "Lcom/xiaomi/g/a/aj;",
        "Lcom/xiaomi/g/a/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/xiaomi/g/a/ak;",
            "Lorg/apache/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lorg/apache/a/b/m;

.field private static final j:Lorg/apache/a/b/e;

.field private static final k:Lorg/apache/a/b/e;

.field private static final l:Lorg/apache/a/b/e;

.field private static final m:Lorg/apache/a/b/e;

.field private static final n:Lorg/apache/a/b/e;

.field private static final o:Lorg/apache/a/b/e;

.field private static final p:Lorg/apache/a/b/e;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/xiaomi/g/a/f;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/16 v6, 0xb

    new-instance v0, Lorg/apache/a/b/m;

    const-string v1, "XmPushActionUnSubscription"

    invoke-direct {v0, v1}, Lorg/apache/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/g/a/aj;->i:Lorg/apache/a/b/m;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "debug"

    invoke-direct {v0, v1, v6, v8}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/aj;->j:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "target"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/aj;->k:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/aj;->l:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "appId"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/aj;->m:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "topic"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/aj;->n:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "packageName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/aj;->o:Lorg/apache/a/b/e;

    new-instance v0, Lorg/apache/a/b/e;

    const-string v1, "category"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/a/b/e;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/xiaomi/g/a/aj;->p:Lorg/apache/a/b/e;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/xiaomi/g/a/ak;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/xiaomi/g/a/ak;->a:Lcom/xiaomi/g/a/ak;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "debug"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/ak;->b:Lcom/xiaomi/g/a/ak;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "target"

    new-instance v4, Lorg/apache/a/a/g;

    const-class v5, Lcom/xiaomi/g/a/f;

    invoke-direct {v4, v5}, Lorg/apache/a/a/g;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/ak;->c:Lcom/xiaomi/g/a/ak;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "id"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/ak;->d:Lcom/xiaomi/g/a/ak;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "appId"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/ak;->e:Lcom/xiaomi/g/a/ak;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "topic"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/ak;->f:Lcom/xiaomi/g/a/ak;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "packageName"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xiaomi/g/a/ak;->g:Lcom/xiaomi/g/a/ak;

    new-instance v2, Lorg/apache/a/a/b;

    const-string v3, "category"

    new-instance v4, Lorg/apache/a/a/c;

    invoke-direct {v4, v6}, Lorg/apache/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/a/a/b;-><init>(Ljava/lang/String;BLorg/apache/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/g/a/aj;->h:Ljava/util/Map;

    const-class v0, Lcom/xiaomi/g/a/aj;

    sget-object v1, Lcom/xiaomi/g/a/aj;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lorg/apache/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->b:Lcom/xiaomi/g/a/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'id\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/g/a/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'appId\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/g/a/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'topic\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/g/a/aj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/apache/a/b/i;-><init>(Ljava/lang/String;B)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/a/b/h;)V
    .locals 4

    const/16 v3, 0xb

    invoke-virtual {p1}, Lorg/apache/a/b/h;->d()Lorg/apache/a/b/m;

    :goto_0
    invoke-virtual {p1}, Lorg/apache/a/b/h;->f()Lorg/apache/a/b/e;

    move-result-object v0

    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-eqz v1, :cond_7

    iget-short v1, v0, Lorg/apache/a/b/e;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/aj;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_1
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/xiaomi/g/a/f;

    invoke-direct {v0}, Lcom/xiaomi/g/a/f;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/g/a/aj;->b:Lcom/xiaomi/g/a/f;

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->b:Lcom/xiaomi/g/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/g/a/f;->a(Lorg/apache/a/b/h;)V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_2
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/aj;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_3
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/aj;->d:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_4
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_4

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/aj;->e:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_5
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/aj;->f:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto :goto_0

    :pswitch_6
    iget-byte v1, v0, Lorg/apache/a/b/e;->b:B

    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lorg/apache/a/b/h;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/g/a/aj;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    iget-byte v0, v0, Lorg/apache/a/b/e;->b:B

    invoke-static {p1, v0}, Lorg/apache/a/b/k;->a(Lorg/apache/a/b/h;B)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lorg/apache/a/b/h;->e()V

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->h()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lcom/xiaomi/g/a/aj;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->a()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->a()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/aj;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/aj;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->b()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->b()Z

    move-result v2

    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/aj;->b:Lcom/xiaomi/g/a/f;

    iget-object v2, p1, Lcom/xiaomi/g/a/aj;->b:Lcom/xiaomi/g/a/f;

    invoke-virtual {v1, v2}, Lcom/xiaomi/g/a/f;->a(Lcom/xiaomi/g/a/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->c()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->c()Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/aj;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/aj;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->d()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->d()Z

    move-result v2

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/aj;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/aj;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_9
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->e()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->e()Z

    move-result v2

    if-nez v1, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/aj;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->f()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->f()Z

    move-result v2

    if-nez v1, :cond_c

    if-eqz v2, :cond_d

    :cond_c
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/aj;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/aj;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_d
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->g()Z

    move-result v1

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->g()Z

    move-result v2

    if-nez v1, :cond_e

    if-eqz v2, :cond_f

    :cond_e
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/g/a/aj;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/g/a/aj;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final b(Lorg/apache/a/b/h;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->h()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->a()V

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/g/a/aj;->j:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->b:Lcom/xiaomi/g/a/f;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/g/a/aj;->k:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->b:Lcom/xiaomi/g/a/f;

    invoke-virtual {v0, p1}, Lcom/xiaomi/g/a/f;->b(Lorg/apache/a/b/h;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/g/a/aj;->l:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/xiaomi/g/a/aj;->m:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/g/a/aj;->n:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/g/a/aj;->o:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/g/a/aj;->p:Lorg/apache/a/b/e;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Lorg/apache/a/b/e;)V

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/a/b/h;->a(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lorg/apache/a/b/h;->c()V

    invoke-virtual {p1}, Lorg/apache/a/b/h;->b()V

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/xiaomi/g/a/aj;

    .line 1000
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/aj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->b:Lcom/xiaomi/g/a/f;

    iget-object v1, p1, Lcom/xiaomi/g/a/aj;->b:Lcom/xiaomi/g/a/f;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/aj;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/aj;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->e()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/aj;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->f()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/aj;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->g()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1}, Lcom/xiaomi/g/a/aj;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/g/a/aj;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/a/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    const/4 v0, 0x0

    .line 0
    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/xiaomi/g/a/aj;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/xiaomi/g/a/aj;

    invoke-virtual {p0, p1}, Lcom/xiaomi/g/a/aj;->a(Lcom/xiaomi/g/a/aj;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "XmPushActionUnSubscription("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "debug:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    move v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->b()Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "target:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->b:Lcom/xiaomi/g/a/f;

    if-nez v0, :cond_6

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-nez v1, :cond_2

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->c:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->d:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "topic:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->e:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "packageName:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->f:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_5
    invoke-direct {p0}, Lcom/xiaomi/g/a/aj;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "category:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->g:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_6
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->b:Lcom/xiaomi/g/a/f;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/g/a/aj;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    move v1, v0

    goto/16 :goto_1
.end method
