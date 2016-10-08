.class final Lcom/tencent/bugly/proguard/as;
.super Ljava/lang/Thread;
.source "BUGLY"


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:[B

.field private d:I

.field private e:Lcom/tencent/bugly/proguard/n;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/ContentValues;

.field private h:Z

.field private i:[Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:[Ljava/lang/String;

.field private synthetic r:Lcom/tencent/bugly/proguard/o;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/o;)V
    .locals 1

    .prologue
    .line 725
    iput-object p1, p0, Lcom/tencent/bugly/proguard/as;->r:Lcom/tencent/bugly/proguard/o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 726
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/bugly/proguard/as;->d:I

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/as;->e:Lcom/tencent/bugly/proguard/n;

    .line 728
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    .line 772
    iget v0, p0, Lcom/tencent/bugly/proguard/as;->d:I

    packed-switch v0, :pswitch_data_0

    .line 793
    :goto_0
    return-void

    .line 774
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/as;->r:Lcom/tencent/bugly/proguard/o;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/as;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/as;->g:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/as;->e:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/n;)J

    goto :goto_0

    .line 777
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/as;->r:Lcom/tencent/bugly/proguard/o;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/as;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/as;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/as;->q:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/as;->e:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)I

    goto :goto_0

    .line 780
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/as;->r:Lcom/tencent/bugly/proguard/o;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/as;->h:Z

    iget-object v2, p0, Lcom/tencent/bugly/proguard/as;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/as;->i:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/as;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/as;->k:[Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/bugly/proguard/as;->l:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/bugly/proguard/as;->m:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/bugly/proguard/as;->n:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/bugly/proguard/as;->o:Ljava/lang/String;

    iget-object v10, p0, Lcom/tencent/bugly/proguard/as;->e:Lcom/tencent/bugly/proguard/n;

    invoke-static/range {v0 .. v10}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)Landroid/database/Cursor;

    goto :goto_0

    .line 784
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/as;->r:Lcom/tencent/bugly/proguard/o;

    iget v1, p0, Lcom/tencent/bugly/proguard/as;->a:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/as;->c:[B

    iget-object v4, p0, Lcom/tencent/bugly/proguard/as;->e:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;)Z

    goto :goto_0

    .line 787
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/as;->r:Lcom/tencent/bugly/proguard/o;

    iget v1, p0, Lcom/tencent/bugly/proguard/as;->a:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/as;->e:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;ILcom/tencent/bugly/proguard/n;)Ljava/util/Map;

    goto :goto_0

    .line 790
    :pswitch_5
    iget v0, p0, Lcom/tencent/bugly/proguard/as;->a:I

    iget-object v1, p0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/as;->e:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/o;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/n;)Z

    goto :goto_0

    .line 772
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
