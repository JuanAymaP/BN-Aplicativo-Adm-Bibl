﻿'------------------------------------------------------------------------------
' <auto-generated>
'     Este código fue generado por una herramienta.
'     Versión de runtime:4.0.30319.42000
'
'     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
'     se vuelve a generar el código.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict Off
Option Explicit On



'''<summary>
'''Represents a strongly typed in-memory cache of data.
'''</summary>
<Global.System.Serializable(),  _
 Global.System.ComponentModel.DesignerCategoryAttribute("code"),  _
 Global.System.ComponentModel.ToolboxItem(true),  _
 Global.System.Xml.Serialization.XmlSchemaProviderAttribute("GetTypedDataSetSchema"),  _
 Global.System.Xml.Serialization.XmlRootAttribute("dtsBusquedaWeb"),  _
 Global.System.ComponentModel.Design.HelpKeywordAttribute("vs.data.DataSet")>  _
Partial Public Class dtsBusquedaWeb
    Inherits Global.System.Data.DataSet
    
    Private tableDataTable_BusquedaWeb As DataTable_BusquedaWebDataTable
    
    Private _schemaSerializationMode As Global.System.Data.SchemaSerializationMode = Global.System.Data.SchemaSerializationMode.IncludeSchema
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Public Sub New()
        MyBase.New
        Me.BeginInit
        Me.InitClass
        Dim schemaChangedHandler As Global.System.ComponentModel.CollectionChangeEventHandler = AddressOf Me.SchemaChanged
        AddHandler MyBase.Tables.CollectionChanged, schemaChangedHandler
        AddHandler MyBase.Relations.CollectionChanged, schemaChangedHandler
        Me.EndInit
    End Sub
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Protected Sub New(ByVal info As Global.System.Runtime.Serialization.SerializationInfo, ByVal context As Global.System.Runtime.Serialization.StreamingContext)
        MyBase.New(info, context, false)
        If (Me.IsBinarySerialized(info, context) = true) Then
            Me.InitVars(false)
            Dim schemaChangedHandler1 As Global.System.ComponentModel.CollectionChangeEventHandler = AddressOf Me.SchemaChanged
            AddHandler Me.Tables.CollectionChanged, schemaChangedHandler1
            AddHandler Me.Relations.CollectionChanged, schemaChangedHandler1
            Return
        End If
        Dim strSchema As String = CType(info.GetValue("XmlSchema", GetType(String)),String)
        If (Me.DetermineSchemaSerializationMode(info, context) = Global.System.Data.SchemaSerializationMode.IncludeSchema) Then
            Dim ds As Global.System.Data.DataSet = New Global.System.Data.DataSet()
            ds.ReadXmlSchema(New Global.System.Xml.XmlTextReader(New Global.System.IO.StringReader(strSchema)))
            If (Not (ds.Tables("DataTable_BusquedaWeb")) Is Nothing) Then
                MyBase.Tables.Add(New DataTable_BusquedaWebDataTable(ds.Tables("DataTable_BusquedaWeb")))
            End If
            Me.DataSetName = ds.DataSetName
            Me.Prefix = ds.Prefix
            Me.Namespace = ds.Namespace
            Me.Locale = ds.Locale
            Me.CaseSensitive = ds.CaseSensitive
            Me.EnforceConstraints = ds.EnforceConstraints
            Me.Merge(ds, false, Global.System.Data.MissingSchemaAction.Add)
            Me.InitVars
        Else
            Me.ReadXmlSchema(New Global.System.Xml.XmlTextReader(New Global.System.IO.StringReader(strSchema)))
        End If
        Me.GetSerializationData(info, context)
        Dim schemaChangedHandler As Global.System.ComponentModel.CollectionChangeEventHandler = AddressOf Me.SchemaChanged
        AddHandler MyBase.Tables.CollectionChanged, schemaChangedHandler
        AddHandler Me.Relations.CollectionChanged, schemaChangedHandler
    End Sub
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0"),  _
     Global.System.ComponentModel.Browsable(false),  _
     Global.System.ComponentModel.DesignerSerializationVisibility(Global.System.ComponentModel.DesignerSerializationVisibility.Content)>  _
    Public ReadOnly Property DataTable_BusquedaWeb() As DataTable_BusquedaWebDataTable
        Get
            Return Me.tableDataTable_BusquedaWeb
        End Get
    End Property
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0"),  _
     Global.System.ComponentModel.BrowsableAttribute(true),  _
     Global.System.ComponentModel.DesignerSerializationVisibilityAttribute(Global.System.ComponentModel.DesignerSerializationVisibility.Visible)>  _
    Public Overrides Property SchemaSerializationMode() As Global.System.Data.SchemaSerializationMode
        Get
            Return Me._schemaSerializationMode
        End Get
        Set
            Me._schemaSerializationMode = value
        End Set
    End Property
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0"),  _
     Global.System.ComponentModel.DesignerSerializationVisibilityAttribute(Global.System.ComponentModel.DesignerSerializationVisibility.Hidden)>  _
    Public Shadows ReadOnly Property Tables() As Global.System.Data.DataTableCollection
        Get
            Return MyBase.Tables
        End Get
    End Property
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0"),  _
     Global.System.ComponentModel.DesignerSerializationVisibilityAttribute(Global.System.ComponentModel.DesignerSerializationVisibility.Hidden)>  _
    Public Shadows ReadOnly Property Relations() As Global.System.Data.DataRelationCollection
        Get
            Return MyBase.Relations
        End Get
    End Property
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Protected Overrides Sub InitializeDerivedDataSet()
        Me.BeginInit
        Me.InitClass
        Me.EndInit
    End Sub
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Public Overrides Function Clone() As Global.System.Data.DataSet
        Dim cln As dtsBusquedaWeb = CType(MyBase.Clone,dtsBusquedaWeb)
        cln.InitVars
        cln.SchemaSerializationMode = Me.SchemaSerializationMode
        Return cln
    End Function
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Protected Overrides Function ShouldSerializeTables() As Boolean
        Return false
    End Function
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Protected Overrides Function ShouldSerializeRelations() As Boolean
        Return false
    End Function
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Protected Overrides Sub ReadXmlSerializable(ByVal reader As Global.System.Xml.XmlReader)
        If (Me.DetermineSchemaSerializationMode(reader) = Global.System.Data.SchemaSerializationMode.IncludeSchema) Then
            Me.Reset
            Dim ds As Global.System.Data.DataSet = New Global.System.Data.DataSet()
            ds.ReadXml(reader)
            If (Not (ds.Tables("DataTable_BusquedaWeb")) Is Nothing) Then
                MyBase.Tables.Add(New DataTable_BusquedaWebDataTable(ds.Tables("DataTable_BusquedaWeb")))
            End If
            Me.DataSetName = ds.DataSetName
            Me.Prefix = ds.Prefix
            Me.Namespace = ds.Namespace
            Me.Locale = ds.Locale
            Me.CaseSensitive = ds.CaseSensitive
            Me.EnforceConstraints = ds.EnforceConstraints
            Me.Merge(ds, false, Global.System.Data.MissingSchemaAction.Add)
            Me.InitVars
        Else
            Me.ReadXml(reader)
            Me.InitVars
        End If
    End Sub
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Protected Overrides Function GetSchemaSerializable() As Global.System.Xml.Schema.XmlSchema
        Dim stream As Global.System.IO.MemoryStream = New Global.System.IO.MemoryStream()
        Me.WriteXmlSchema(New Global.System.Xml.XmlTextWriter(stream, Nothing))
        stream.Position = 0
        Return Global.System.Xml.Schema.XmlSchema.Read(New Global.System.Xml.XmlTextReader(stream), Nothing)
    End Function
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Friend Overloads Sub InitVars()
        Me.InitVars(true)
    End Sub
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Friend Overloads Sub InitVars(ByVal initTable As Boolean)
        Me.tableDataTable_BusquedaWeb = CType(MyBase.Tables("DataTable_BusquedaWeb"),DataTable_BusquedaWebDataTable)
        If (initTable = true) Then
            If (Not (Me.tableDataTable_BusquedaWeb) Is Nothing) Then
                Me.tableDataTable_BusquedaWeb.InitVars
            End If
        End If
    End Sub
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Private Sub InitClass()
        Me.DataSetName = "dtsBusquedaWeb"
        Me.Prefix = ""
        Me.Namespace = "http://tempuri.org/dtsBusquedaWeb.xsd"
        Me.EnforceConstraints = true
        Me.SchemaSerializationMode = Global.System.Data.SchemaSerializationMode.IncludeSchema
        Me.tableDataTable_BusquedaWeb = New DataTable_BusquedaWebDataTable()
        MyBase.Tables.Add(Me.tableDataTable_BusquedaWeb)
    End Sub
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Private Function ShouldSerializeDataTable_BusquedaWeb() As Boolean
        Return false
    End Function
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Private Sub SchemaChanged(ByVal sender As Object, ByVal e As Global.System.ComponentModel.CollectionChangeEventArgs)
        If (e.Action = Global.System.ComponentModel.CollectionChangeAction.Remove) Then
            Me.InitVars
        End If
    End Sub
    
    <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
     Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Public Shared Function GetTypedDataSetSchema(ByVal xs As Global.System.Xml.Schema.XmlSchemaSet) As Global.System.Xml.Schema.XmlSchemaComplexType
        Dim ds As dtsBusquedaWeb = New dtsBusquedaWeb()
        Dim type As Global.System.Xml.Schema.XmlSchemaComplexType = New Global.System.Xml.Schema.XmlSchemaComplexType()
        Dim sequence As Global.System.Xml.Schema.XmlSchemaSequence = New Global.System.Xml.Schema.XmlSchemaSequence()
        Dim any As Global.System.Xml.Schema.XmlSchemaAny = New Global.System.Xml.Schema.XmlSchemaAny()
        any.Namespace = ds.Namespace
        sequence.Items.Add(any)
        type.Particle = sequence
        Dim dsSchema As Global.System.Xml.Schema.XmlSchema = ds.GetSchemaSerializable
        If xs.Contains(dsSchema.TargetNamespace) Then
            Dim s1 As Global.System.IO.MemoryStream = New Global.System.IO.MemoryStream()
            Dim s2 As Global.System.IO.MemoryStream = New Global.System.IO.MemoryStream()
            Try 
                Dim schema As Global.System.Xml.Schema.XmlSchema = Nothing
                dsSchema.Write(s1)
                Dim schemas As Global.System.Collections.IEnumerator = xs.Schemas(dsSchema.TargetNamespace).GetEnumerator
                Do While schemas.MoveNext
                    schema = CType(schemas.Current,Global.System.Xml.Schema.XmlSchema)
                    s2.SetLength(0)
                    schema.Write(s2)
                    If (s1.Length = s2.Length) Then
                        s1.Position = 0
                        s2.Position = 0
                        
                        Do While ((s1.Position <> s1.Length)  _
                                    AndAlso (s1.ReadByte = s2.ReadByte))
                            
                            
                        Loop
                        If (s1.Position = s1.Length) Then
                            Return type
                        End If
                    End If
                    
                Loop
            Finally
                If (Not (s1) Is Nothing) Then
                    s1.Close
                End If
                If (Not (s2) Is Nothing) Then
                    s2.Close
                End If
            End Try
        End If
        xs.Add(dsSchema)
        Return type
    End Function
    
    <Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Public Delegate Sub DataTable_BusquedaWebRowChangeEventHandler(ByVal sender As Object, ByVal e As DataTable_BusquedaWebRowChangeEvent)
    
    '''<summary>
    '''Represents the strongly named DataTable class.
    '''</summary>
    <Global.System.Serializable(),  _
     Global.System.Xml.Serialization.XmlSchemaProviderAttribute("GetTypedTableSchema")>  _
    Partial Public Class DataTable_BusquedaWebDataTable
        Inherits Global.System.Data.TypedTableBase(Of DataTable_BusquedaWebRow)
        
        Private columncBusq_Detalle As Global.System.Data.DataColumn
        
        Private columncBusq_Fecha As Global.System.Data.DataColumn
        
        Private columncBusq_Hora As Global.System.Data.DataColumn
        
        Private columncBusq_DireccionIP As Global.System.Data.DataColumn
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Sub New()
            MyBase.New
            Me.TableName = "DataTable_BusquedaWeb"
            Me.BeginInit
            Me.InitClass
            Me.EndInit
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Friend Sub New(ByVal table As Global.System.Data.DataTable)
            MyBase.New
            Me.TableName = table.TableName
            If (table.CaseSensitive <> table.DataSet.CaseSensitive) Then
                Me.CaseSensitive = table.CaseSensitive
            End If
            If (table.Locale.ToString <> table.DataSet.Locale.ToString) Then
                Me.Locale = table.Locale
            End If
            If (table.Namespace <> table.DataSet.Namespace) Then
                Me.Namespace = table.Namespace
            End If
            Me.Prefix = table.Prefix
            Me.MinimumCapacity = table.MinimumCapacity
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Protected Sub New(ByVal info As Global.System.Runtime.Serialization.SerializationInfo, ByVal context As Global.System.Runtime.Serialization.StreamingContext)
            MyBase.New(info, context)
            Me.InitVars
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public ReadOnly Property cBusq_DetalleColumn() As Global.System.Data.DataColumn
            Get
                Return Me.columncBusq_Detalle
            End Get
        End Property
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public ReadOnly Property cBusq_FechaColumn() As Global.System.Data.DataColumn
            Get
                Return Me.columncBusq_Fecha
            End Get
        End Property
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public ReadOnly Property cBusq_HoraColumn() As Global.System.Data.DataColumn
            Get
                Return Me.columncBusq_Hora
            End Get
        End Property
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public ReadOnly Property cBusq_DireccionIPColumn() As Global.System.Data.DataColumn
            Get
                Return Me.columncBusq_DireccionIP
            End Get
        End Property
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0"),  _
         Global.System.ComponentModel.Browsable(false)>  _
        Public ReadOnly Property Count() As Integer
            Get
                Return Me.Rows.Count
            End Get
        End Property
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Default ReadOnly Property Item(ByVal index As Integer) As DataTable_BusquedaWebRow
            Get
                Return CType(Me.Rows(index),DataTable_BusquedaWebRow)
            End Get
        End Property
        
        <Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Event DataTable_BusquedaWebRowChanging As DataTable_BusquedaWebRowChangeEventHandler
        
        <Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Event DataTable_BusquedaWebRowChanged As DataTable_BusquedaWebRowChangeEventHandler
        
        <Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Event DataTable_BusquedaWebRowDeleting As DataTable_BusquedaWebRowChangeEventHandler
        
        <Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Event DataTable_BusquedaWebRowDeleted As DataTable_BusquedaWebRowChangeEventHandler
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Overloads Sub AddDataTable_BusquedaWebRow(ByVal row As DataTable_BusquedaWebRow)
            Me.Rows.Add(row)
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Overloads Function AddDataTable_BusquedaWebRow(ByVal cBusq_Detalle As String, ByVal cBusq_Fecha As String, ByVal cBusq_Hora As String, ByVal cBusq_DireccionIP As String) As DataTable_BusquedaWebRow
            Dim rowDataTable_BusquedaWebRow As DataTable_BusquedaWebRow = CType(Me.NewRow,DataTable_BusquedaWebRow)
            Dim columnValuesArray() As Object = New Object() {cBusq_Detalle, cBusq_Fecha, cBusq_Hora, cBusq_DireccionIP}
            rowDataTable_BusquedaWebRow.ItemArray = columnValuesArray
            Me.Rows.Add(rowDataTable_BusquedaWebRow)
            Return rowDataTable_BusquedaWebRow
        End Function
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Overrides Function Clone() As Global.System.Data.DataTable
            Dim cln As DataTable_BusquedaWebDataTable = CType(MyBase.Clone,DataTable_BusquedaWebDataTable)
            cln.InitVars
            Return cln
        End Function
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Protected Overrides Function CreateInstance() As Global.System.Data.DataTable
            Return New DataTable_BusquedaWebDataTable()
        End Function
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Friend Sub InitVars()
            Me.columncBusq_Detalle = MyBase.Columns("cBusq_Detalle")
            Me.columncBusq_Fecha = MyBase.Columns("cBusq_Fecha")
            Me.columncBusq_Hora = MyBase.Columns("cBusq_Hora")
            Me.columncBusq_DireccionIP = MyBase.Columns("cBusq_DireccionIP")
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Private Sub InitClass()
            Me.columncBusq_Detalle = New Global.System.Data.DataColumn("cBusq_Detalle", GetType(String), Nothing, Global.System.Data.MappingType.Element)
            MyBase.Columns.Add(Me.columncBusq_Detalle)
            Me.columncBusq_Fecha = New Global.System.Data.DataColumn("cBusq_Fecha", GetType(String), Nothing, Global.System.Data.MappingType.Element)
            MyBase.Columns.Add(Me.columncBusq_Fecha)
            Me.columncBusq_Hora = New Global.System.Data.DataColumn("cBusq_Hora", GetType(String), Nothing, Global.System.Data.MappingType.Element)
            MyBase.Columns.Add(Me.columncBusq_Hora)
            Me.columncBusq_DireccionIP = New Global.System.Data.DataColumn("cBusq_DireccionIP", GetType(String), Nothing, Global.System.Data.MappingType.Element)
            MyBase.Columns.Add(Me.columncBusq_DireccionIP)
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Function NewDataTable_BusquedaWebRow() As DataTable_BusquedaWebRow
            Return CType(Me.NewRow,DataTable_BusquedaWebRow)
        End Function
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Protected Overrides Function NewRowFromBuilder(ByVal builder As Global.System.Data.DataRowBuilder) As Global.System.Data.DataRow
            Return New DataTable_BusquedaWebRow(builder)
        End Function
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Protected Overrides Function GetRowType() As Global.System.Type
            Return GetType(DataTable_BusquedaWebRow)
        End Function
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Protected Overrides Sub OnRowChanged(ByVal e As Global.System.Data.DataRowChangeEventArgs)
            MyBase.OnRowChanged(e)
            If (Not (Me.DataTable_BusquedaWebRowChangedEvent) Is Nothing) Then
                RaiseEvent DataTable_BusquedaWebRowChanged(Me, New DataTable_BusquedaWebRowChangeEvent(CType(e.Row,DataTable_BusquedaWebRow), e.Action))
            End If
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Protected Overrides Sub OnRowChanging(ByVal e As Global.System.Data.DataRowChangeEventArgs)
            MyBase.OnRowChanging(e)
            If (Not (Me.DataTable_BusquedaWebRowChangingEvent) Is Nothing) Then
                RaiseEvent DataTable_BusquedaWebRowChanging(Me, New DataTable_BusquedaWebRowChangeEvent(CType(e.Row,DataTable_BusquedaWebRow), e.Action))
            End If
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Protected Overrides Sub OnRowDeleted(ByVal e As Global.System.Data.DataRowChangeEventArgs)
            MyBase.OnRowDeleted(e)
            If (Not (Me.DataTable_BusquedaWebRowDeletedEvent) Is Nothing) Then
                RaiseEvent DataTable_BusquedaWebRowDeleted(Me, New DataTable_BusquedaWebRowChangeEvent(CType(e.Row,DataTable_BusquedaWebRow), e.Action))
            End If
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Protected Overrides Sub OnRowDeleting(ByVal e As Global.System.Data.DataRowChangeEventArgs)
            MyBase.OnRowDeleting(e)
            If (Not (Me.DataTable_BusquedaWebRowDeletingEvent) Is Nothing) Then
                RaiseEvent DataTable_BusquedaWebRowDeleting(Me, New DataTable_BusquedaWebRowChangeEvent(CType(e.Row,DataTable_BusquedaWebRow), e.Action))
            End If
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Sub RemoveDataTable_BusquedaWebRow(ByVal row As DataTable_BusquedaWebRow)
            Me.Rows.Remove(row)
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Shared Function GetTypedTableSchema(ByVal xs As Global.System.Xml.Schema.XmlSchemaSet) As Global.System.Xml.Schema.XmlSchemaComplexType
            Dim type As Global.System.Xml.Schema.XmlSchemaComplexType = New Global.System.Xml.Schema.XmlSchemaComplexType()
            Dim sequence As Global.System.Xml.Schema.XmlSchemaSequence = New Global.System.Xml.Schema.XmlSchemaSequence()
            Dim ds As dtsBusquedaWeb = New dtsBusquedaWeb()
            Dim any1 As Global.System.Xml.Schema.XmlSchemaAny = New Global.System.Xml.Schema.XmlSchemaAny()
            any1.Namespace = "http://www.w3.org/2001/XMLSchema"
            any1.MinOccurs = New Decimal(0)
            any1.MaxOccurs = Decimal.MaxValue
            any1.ProcessContents = Global.System.Xml.Schema.XmlSchemaContentProcessing.Lax
            sequence.Items.Add(any1)
            Dim any2 As Global.System.Xml.Schema.XmlSchemaAny = New Global.System.Xml.Schema.XmlSchemaAny()
            any2.Namespace = "urn:schemas-microsoft-com:xml-diffgram-v1"
            any2.MinOccurs = New Decimal(1)
            any2.ProcessContents = Global.System.Xml.Schema.XmlSchemaContentProcessing.Lax
            sequence.Items.Add(any2)
            Dim attribute1 As Global.System.Xml.Schema.XmlSchemaAttribute = New Global.System.Xml.Schema.XmlSchemaAttribute()
            attribute1.Name = "namespace"
            attribute1.FixedValue = ds.Namespace
            type.Attributes.Add(attribute1)
            Dim attribute2 As Global.System.Xml.Schema.XmlSchemaAttribute = New Global.System.Xml.Schema.XmlSchemaAttribute()
            attribute2.Name = "tableTypeName"
            attribute2.FixedValue = "DataTable_BusquedaWebDataTable"
            type.Attributes.Add(attribute2)
            type.Particle = sequence
            Dim dsSchema As Global.System.Xml.Schema.XmlSchema = ds.GetSchemaSerializable
            If xs.Contains(dsSchema.TargetNamespace) Then
                Dim s1 As Global.System.IO.MemoryStream = New Global.System.IO.MemoryStream()
                Dim s2 As Global.System.IO.MemoryStream = New Global.System.IO.MemoryStream()
                Try 
                    Dim schema As Global.System.Xml.Schema.XmlSchema = Nothing
                    dsSchema.Write(s1)
                    Dim schemas As Global.System.Collections.IEnumerator = xs.Schemas(dsSchema.TargetNamespace).GetEnumerator
                    Do While schemas.MoveNext
                        schema = CType(schemas.Current,Global.System.Xml.Schema.XmlSchema)
                        s2.SetLength(0)
                        schema.Write(s2)
                        If (s1.Length = s2.Length) Then
                            s1.Position = 0
                            s2.Position = 0
                            
                            Do While ((s1.Position <> s1.Length)  _
                                        AndAlso (s1.ReadByte = s2.ReadByte))
                                
                                
                            Loop
                            If (s1.Position = s1.Length) Then
                                Return type
                            End If
                        End If
                        
                    Loop
                Finally
                    If (Not (s1) Is Nothing) Then
                        s1.Close
                    End If
                    If (Not (s2) Is Nothing) Then
                        s2.Close
                    End If
                End Try
            End If
            xs.Add(dsSchema)
            Return type
        End Function
    End Class
    
    '''<summary>
    '''Represents strongly named DataRow class.
    '''</summary>
    Partial Public Class DataTable_BusquedaWebRow
        Inherits Global.System.Data.DataRow
        
        Private tableDataTable_BusquedaWeb As DataTable_BusquedaWebDataTable
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Friend Sub New(ByVal rb As Global.System.Data.DataRowBuilder)
            MyBase.New(rb)
            Me.tableDataTable_BusquedaWeb = CType(Me.Table,DataTable_BusquedaWebDataTable)
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Property cBusq_Detalle() As String
            Get
                Try 
                    Return CType(Me(Me.tableDataTable_BusquedaWeb.cBusq_DetalleColumn),String)
                Catch e As Global.System.InvalidCastException
                    Throw New Global.System.Data.StrongTypingException("El valor de la columna 'cBusq_Detalle' de la tabla 'DataTable_BusquedaWeb' es DBN"& _ 
                            "ull.", e)
                End Try
            End Get
            Set
                Me(Me.tableDataTable_BusquedaWeb.cBusq_DetalleColumn) = value
            End Set
        End Property
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Property cBusq_Fecha() As String
            Get
                Try 
                    Return CType(Me(Me.tableDataTable_BusquedaWeb.cBusq_FechaColumn),String)
                Catch e As Global.System.InvalidCastException
                    Throw New Global.System.Data.StrongTypingException("El valor de la columna 'cBusq_Fecha' de la tabla 'DataTable_BusquedaWeb' es DBNul"& _ 
                            "l.", e)
                End Try
            End Get
            Set
                Me(Me.tableDataTable_BusquedaWeb.cBusq_FechaColumn) = value
            End Set
        End Property
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Property cBusq_Hora() As String
            Get
                Try 
                    Return CType(Me(Me.tableDataTable_BusquedaWeb.cBusq_HoraColumn),String)
                Catch e As Global.System.InvalidCastException
                    Throw New Global.System.Data.StrongTypingException("El valor de la columna 'cBusq_Hora' de la tabla 'DataTable_BusquedaWeb' es DBNull"& _ 
                            ".", e)
                End Try
            End Get
            Set
                Me(Me.tableDataTable_BusquedaWeb.cBusq_HoraColumn) = value
            End Set
        End Property
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Property cBusq_DireccionIP() As String
            Get
                Try 
                    Return CType(Me(Me.tableDataTable_BusquedaWeb.cBusq_DireccionIPColumn),String)
                Catch e As Global.System.InvalidCastException
                    Throw New Global.System.Data.StrongTypingException("El valor de la columna 'cBusq_DireccionIP' de la tabla 'DataTable_BusquedaWeb' es"& _ 
                            " DBNull.", e)
                End Try
            End Get
            Set
                Me(Me.tableDataTable_BusquedaWeb.cBusq_DireccionIPColumn) = value
            End Set
        End Property
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Function IscBusq_DetalleNull() As Boolean
            Return Me.IsNull(Me.tableDataTable_BusquedaWeb.cBusq_DetalleColumn)
        End Function
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Sub SetcBusq_DetalleNull()
            Me(Me.tableDataTable_BusquedaWeb.cBusq_DetalleColumn) = Global.System.Convert.DBNull
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Function IscBusq_FechaNull() As Boolean
            Return Me.IsNull(Me.tableDataTable_BusquedaWeb.cBusq_FechaColumn)
        End Function
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Sub SetcBusq_FechaNull()
            Me(Me.tableDataTable_BusquedaWeb.cBusq_FechaColumn) = Global.System.Convert.DBNull
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Function IscBusq_HoraNull() As Boolean
            Return Me.IsNull(Me.tableDataTable_BusquedaWeb.cBusq_HoraColumn)
        End Function
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Sub SetcBusq_HoraNull()
            Me(Me.tableDataTable_BusquedaWeb.cBusq_HoraColumn) = Global.System.Convert.DBNull
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Function IscBusq_DireccionIPNull() As Boolean
            Return Me.IsNull(Me.tableDataTable_BusquedaWeb.cBusq_DireccionIPColumn)
        End Function
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Sub SetcBusq_DireccionIPNull()
            Me(Me.tableDataTable_BusquedaWeb.cBusq_DireccionIPColumn) = Global.System.Convert.DBNull
        End Sub
    End Class
    
    '''<summary>
    '''Row event argument class
    '''</summary>
    <Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
    Public Class DataTable_BusquedaWebRowChangeEvent
        Inherits Global.System.EventArgs
        
        Private eventRow As DataTable_BusquedaWebRow
        
        Private eventAction As Global.System.Data.DataRowAction
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public Sub New(ByVal row As DataTable_BusquedaWebRow, ByVal action As Global.System.Data.DataRowAction)
            MyBase.New
            Me.eventRow = row
            Me.eventAction = action
        End Sub
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public ReadOnly Property Row() As DataTable_BusquedaWebRow
            Get
                Return Me.eventRow
            End Get
        End Property
        
        <Global.System.Diagnostics.DebuggerNonUserCodeAttribute(),  _
         Global.System.CodeDom.Compiler.GeneratedCodeAttribute("System.Data.Design.TypedDataSetGenerator", "16.0.0.0")>  _
        Public ReadOnly Property Action() As Global.System.Data.DataRowAction
            Get
                Return Me.eventAction
            End Get
        End Property
    End Class
End Class