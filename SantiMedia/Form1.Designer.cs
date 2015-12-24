namespace SantiMedia
{
    partial class SantiMedia
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.buttonOrdenaSeries = new System.Windows.Forms.Button();
            this.buttonRecopilarVideos = new System.Windows.Forms.Button();
            this.buttonRenombrar = new System.Windows.Forms.Button();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabPageInicio = new System.Windows.Forms.TabPage();
            this.label7 = new System.Windows.Forms.Label();
            this.labelNumPatrones = new System.Windows.Forms.Label();
            this.tabPageEjecutarPartes = new System.Windows.Forms.TabPage();
            this.tabPageDatosSeries = new System.Windows.Forms.TabPage();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPageAñadirSerie = new System.Windows.Forms.TabPage();
            this.buttonAñadirSerie = new System.Windows.Forms.Button();
            this.panel5 = new System.Windows.Forms.Panel();
            this.textBoxCapitulosTemporada = new System.Windows.Forms.TextBox();
            this.textBoxNumeroTemporadas = new System.Windows.Forms.TextBox();
            this.textBoxTemporadaActual = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.comboBoxExtension = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.comboBoxEstado = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.textBoxTitulo = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.tabPageModificarSerie = new System.Windows.Forms.TabPage();
            this.tabPageAñadirPatron = new System.Windows.Forms.TabPage();
            this.panel4 = new System.Windows.Forms.Panel();
            this.labelAñadirPatron = new System.Windows.Forms.Label();
            this.buttonAñadirPatron = new System.Windows.Forms.Button();
            this.textBoxTextoPatron = new System.Windows.Forms.TextBox();
            this.listBoxPatrones = new System.Windows.Forms.ListBox();
            this.listBoxSeleccionarSeriePatron = new System.Windows.Forms.ListBox();
            this.tabControl.SuspendLayout();
            this.tabPageInicio.SuspendLayout();
            this.tabPageEjecutarPartes.SuspendLayout();
            this.tabPageDatosSeries.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPageAñadirSerie.SuspendLayout();
            this.panel5.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            this.tabPageAñadirPatron.SuspendLayout();
            this.panel4.SuspendLayout();
            this.SuspendLayout();
            // 
            // buttonOrdenaSeries
            // 
            this.buttonOrdenaSeries.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonOrdenaSeries.Location = new System.Drawing.Point(9, 6);
            this.buttonOrdenaSeries.Name = "buttonOrdenaSeries";
            this.buttonOrdenaSeries.Size = new System.Drawing.Size(157, 63);
            this.buttonOrdenaSeries.TabIndex = 0;
            this.buttonOrdenaSeries.Text = "Ordena series";
            this.buttonOrdenaSeries.UseVisualStyleBackColor = true;
            this.buttonOrdenaSeries.Click += new System.EventHandler(this.buttonOrdenaSeries_Click);
            // 
            // buttonRecopilarVideos
            // 
            this.buttonRecopilarVideos.Location = new System.Drawing.Point(6, 6);
            this.buttonRecopilarVideos.Name = "buttonRecopilarVideos";
            this.buttonRecopilarVideos.Size = new System.Drawing.Size(116, 23);
            this.buttonRecopilarVideos.TabIndex = 1;
            this.buttonRecopilarVideos.Text = "RecopilarVideos";
            this.buttonRecopilarVideos.UseVisualStyleBackColor = true;
            this.buttonRecopilarVideos.Click += new System.EventHandler(this.buttonRecopilarVideos_Click);
            // 
            // buttonRenombrar
            // 
            this.buttonRenombrar.Location = new System.Drawing.Point(9, 35);
            this.buttonRenombrar.Name = "buttonRenombrar";
            this.buttonRenombrar.Size = new System.Drawing.Size(115, 23);
            this.buttonRenombrar.TabIndex = 3;
            this.buttonRenombrar.Text = "Renombrar";
            this.buttonRenombrar.UseVisualStyleBackColor = true;
            this.buttonRenombrar.Click += new System.EventHandler(this.buttonRenombrar_Click);
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabPageInicio);
            this.tabControl.Controls.Add(this.tabPageEjecutarPartes);
            this.tabControl.Controls.Add(this.tabPageDatosSeries);
            this.tabControl.Location = new System.Drawing.Point(-1, 1);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(633, 436);
            this.tabControl.TabIndex = 7;
            // 
            // tabPageInicio
            // 
            this.tabPageInicio.Controls.Add(this.label7);
            this.tabPageInicio.Controls.Add(this.labelNumPatrones);
            this.tabPageInicio.Controls.Add(this.buttonOrdenaSeries);
            this.tabPageInicio.Location = new System.Drawing.Point(4, 22);
            this.tabPageInicio.Name = "tabPageInicio";
            this.tabPageInicio.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageInicio.Size = new System.Drawing.Size(625, 410);
            this.tabPageInicio.TabIndex = 0;
            this.tabPageInicio.Text = "Inicio";
            this.tabPageInicio.UseVisualStyleBackColor = true;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(172, 6);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(49, 13);
            this.label7.TabIndex = 2;
            this.label7.Text = "Patrones";
            // 
            // labelNumPatrones
            // 
            this.labelNumPatrones.AutoSize = true;
            this.labelNumPatrones.Font = new System.Drawing.Font("Microsoft Sans Serif", 27.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelNumPatrones.ForeColor = System.Drawing.Color.Maroon;
            this.labelNumPatrones.Location = new System.Drawing.Point(172, 27);
            this.labelNumPatrones.Name = "labelNumPatrones";
            this.labelNumPatrones.Size = new System.Drawing.Size(40, 42);
            this.labelNumPatrones.TabIndex = 1;
            this.labelNumPatrones.Text = "0";
            // 
            // tabPageEjecutarPartes
            // 
            this.tabPageEjecutarPartes.Controls.Add(this.buttonRenombrar);
            this.tabPageEjecutarPartes.Controls.Add(this.buttonRecopilarVideos);
            this.tabPageEjecutarPartes.Location = new System.Drawing.Point(4, 22);
            this.tabPageEjecutarPartes.Name = "tabPageEjecutarPartes";
            this.tabPageEjecutarPartes.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageEjecutarPartes.Size = new System.Drawing.Size(625, 410);
            this.tabPageEjecutarPartes.TabIndex = 1;
            this.tabPageEjecutarPartes.Text = "Ejecutar partes";
            this.tabPageEjecutarPartes.UseVisualStyleBackColor = true;
            // 
            // tabPageDatosSeries
            // 
            this.tabPageDatosSeries.Controls.Add(this.tabControl1);
            this.tabPageDatosSeries.Location = new System.Drawing.Point(4, 22);
            this.tabPageDatosSeries.Name = "tabPageDatosSeries";
            this.tabPageDatosSeries.Size = new System.Drawing.Size(625, 410);
            this.tabPageDatosSeries.TabIndex = 2;
            this.tabPageDatosSeries.Text = "Datos series";
            this.tabPageDatosSeries.UseVisualStyleBackColor = true;
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPageAñadirSerie);
            this.tabControl1.Controls.Add(this.tabPageModificarSerie);
            this.tabControl1.Controls.Add(this.tabPageAñadirPatron);
            this.tabControl1.Location = new System.Drawing.Point(3, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(619, 373);
            this.tabControl1.TabIndex = 0;
            this.tabControl1.SelectedIndexChanged += new System.EventHandler(this.tabControl1_SelectedIndexChanged);
            // 
            // tabPageAñadirSerie
            // 
            this.tabPageAñadirSerie.Controls.Add(this.buttonAñadirSerie);
            this.tabPageAñadirSerie.Controls.Add(this.panel5);
            this.tabPageAñadirSerie.Controls.Add(this.panel3);
            this.tabPageAñadirSerie.Controls.Add(this.panel2);
            this.tabPageAñadirSerie.Controls.Add(this.panel1);
            this.tabPageAñadirSerie.Location = new System.Drawing.Point(4, 22);
            this.tabPageAñadirSerie.Name = "tabPageAñadirSerie";
            this.tabPageAñadirSerie.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageAñadirSerie.Size = new System.Drawing.Size(611, 347);
            this.tabPageAñadirSerie.TabIndex = 0;
            this.tabPageAñadirSerie.Text = "Añadir Serie";
            this.tabPageAñadirSerie.UseVisualStyleBackColor = true;
            // 
            // buttonAñadirSerie
            // 
            this.buttonAñadirSerie.Location = new System.Drawing.Point(298, 145);
            this.buttonAñadirSerie.Name = "buttonAñadirSerie";
            this.buttonAñadirSerie.Size = new System.Drawing.Size(81, 29);
            this.buttonAñadirSerie.TabIndex = 16;
            this.buttonAñadirSerie.Text = "Añadir";
            this.buttonAñadirSerie.UseVisualStyleBackColor = true;
            this.buttonAñadirSerie.Click += new System.EventHandler(this.buttonAñadirSerie_Click);
            // 
            // panel5
            // 
            this.panel5.Controls.Add(this.textBoxCapitulosTemporada);
            this.panel5.Controls.Add(this.textBoxNumeroTemporadas);
            this.panel5.Controls.Add(this.textBoxTemporadaActual);
            this.panel5.Controls.Add(this.label4);
            this.panel5.Controls.Add(this.label2);
            this.panel5.Controls.Add(this.label5);
            this.panel5.Location = new System.Drawing.Point(198, 6);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(200, 133);
            this.panel5.TabIndex = 15;
            // 
            // textBoxCapitulosTemporada
            // 
            this.textBoxCapitulosTemporada.Location = new System.Drawing.Point(139, 101);
            this.textBoxCapitulosTemporada.Name = "textBoxCapitulosTemporada";
            this.textBoxCapitulosTemporada.Size = new System.Drawing.Size(42, 20);
            this.textBoxCapitulosTemporada.TabIndex = 12;
            // 
            // textBoxNumeroTemporadas
            // 
            this.textBoxNumeroTemporadas.Location = new System.Drawing.Point(139, 49);
            this.textBoxNumeroTemporadas.Name = "textBoxNumeroTemporadas";
            this.textBoxNumeroTemporadas.Size = new System.Drawing.Size(42, 20);
            this.textBoxNumeroTemporadas.TabIndex = 11;
            // 
            // textBoxTemporadaActual
            // 
            this.textBoxTemporadaActual.Location = new System.Drawing.Point(139, 6);
            this.textBoxTemporadaActual.Name = "textBoxTemporadaActual";
            this.textBoxTemporadaActual.Size = new System.Drawing.Size(42, 20);
            this.textBoxTemporadaActual.TabIndex = 10;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(3, 52);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(117, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Numero de temporadas";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(3, 10);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(94, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Temporada Actual";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(3, 104);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(121, 13);
            this.label5.TabIndex = 10;
            this.label5.Text = "Capitulos por temporada";
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.comboBoxExtension);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Location = new System.Drawing.Point(6, 90);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(186, 49);
            this.panel3.TabIndex = 13;
            // 
            // comboBoxExtension
            // 
            this.comboBoxExtension.FormattingEnabled = true;
            this.comboBoxExtension.Items.AddRange(new object[] {
            ".mkv",
            ".avi",
            ".mp4"});
            this.comboBoxExtension.Location = new System.Drawing.Point(55, 12);
            this.comboBoxExtension.Name = "comboBoxExtension";
            this.comboBoxExtension.Size = new System.Drawing.Size(121, 21);
            this.comboBoxExtension.TabIndex = 13;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(3, 15);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(53, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Extension";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.comboBoxEstado);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Location = new System.Drawing.Point(6, 43);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(186, 41);
            this.panel2.TabIndex = 12;
            // 
            // comboBoxEstado
            // 
            this.comboBoxEstado.FormattingEnabled = true;
            this.comboBoxEstado.Items.AddRange(new object[] {
            "Activa",
            "Desactivada",
            "Finalizada"});
            this.comboBoxEstado.Location = new System.Drawing.Point(55, 7);
            this.comboBoxEstado.Name = "comboBoxEstado";
            this.comboBoxEstado.Size = new System.Drawing.Size(121, 21);
            this.comboBoxEstado.TabIndex = 12;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(9, 15);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(40, 13);
            this.label6.TabIndex = 11;
            this.label6.Text = "Estado";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.textBoxTitulo);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(6, 6);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(186, 31);
            this.panel1.TabIndex = 0;
            // 
            // textBoxTitulo
            // 
            this.textBoxTitulo.Location = new System.Drawing.Point(55, 3);
            this.textBoxTitulo.Name = "textBoxTitulo";
            this.textBoxTitulo.Size = new System.Drawing.Size(121, 20);
            this.textBoxTitulo.TabIndex = 7;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 6);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(33, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Titulo";
            // 
            // tabPageModificarSerie
            // 
            this.tabPageModificarSerie.Location = new System.Drawing.Point(4, 22);
            this.tabPageModificarSerie.Name = "tabPageModificarSerie";
            this.tabPageModificarSerie.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageModificarSerie.Size = new System.Drawing.Size(611, 347);
            this.tabPageModificarSerie.TabIndex = 1;
            this.tabPageModificarSerie.Text = "ModificarSerie";
            this.tabPageModificarSerie.UseVisualStyleBackColor = true;
            // 
            // tabPageAñadirPatron
            // 
            this.tabPageAñadirPatron.Controls.Add(this.panel4);
            this.tabPageAñadirPatron.Controls.Add(this.listBoxPatrones);
            this.tabPageAñadirPatron.Controls.Add(this.listBoxSeleccionarSeriePatron);
            this.tabPageAñadirPatron.Location = new System.Drawing.Point(4, 22);
            this.tabPageAñadirPatron.Name = "tabPageAñadirPatron";
            this.tabPageAñadirPatron.Size = new System.Drawing.Size(611, 347);
            this.tabPageAñadirPatron.TabIndex = 2;
            this.tabPageAñadirPatron.Text = "Añadir Patron";
            this.tabPageAñadirPatron.UseVisualStyleBackColor = true;
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.labelAñadirPatron);
            this.panel4.Controls.Add(this.buttonAñadirPatron);
            this.panel4.Controls.Add(this.textBoxTextoPatron);
            this.panel4.Location = new System.Drawing.Point(329, 3);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(279, 59);
            this.panel4.TabIndex = 1;
            // 
            // labelAñadirPatron
            // 
            this.labelAñadirPatron.AutoSize = true;
            this.labelAñadirPatron.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.labelAñadirPatron.Location = new System.Drawing.Point(3, 39);
            this.labelAñadirPatron.Name = "labelAñadirPatron";
            this.labelAñadirPatron.Size = new System.Drawing.Size(117, 13);
            this.labelAñadirPatron.TabIndex = 6;
            this.labelAñadirPatron.Text = "Añadido correctamente";
            this.labelAñadirPatron.Visible = false;
            // 
            // buttonAñadirPatron
            // 
            this.buttonAñadirPatron.Location = new System.Drawing.Point(161, 29);
            this.buttonAñadirPatron.Name = "buttonAñadirPatron";
            this.buttonAñadirPatron.Size = new System.Drawing.Size(75, 23);
            this.buttonAñadirPatron.TabIndex = 5;
            this.buttonAñadirPatron.Text = "Añadir";
            this.buttonAñadirPatron.UseVisualStyleBackColor = true;
            this.buttonAñadirPatron.Click += new System.EventHandler(this.buttonAñadirPatron_Click);
            // 
            // textBoxTextoPatron
            // 
            this.textBoxTextoPatron.Location = new System.Drawing.Point(3, 3);
            this.textBoxTextoPatron.Name = "textBoxTextoPatron";
            this.textBoxTextoPatron.Size = new System.Drawing.Size(273, 20);
            this.textBoxTextoPatron.TabIndex = 4;
            // 
            // listBoxPatrones
            // 
            this.listBoxPatrones.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.listBoxPatrones.FormattingEnabled = true;
            this.listBoxPatrones.ItemHeight = 24;
            this.listBoxPatrones.Location = new System.Drawing.Point(329, 72);
            this.listBoxPatrones.Name = "listBoxPatrones";
            this.listBoxPatrones.Size = new System.Drawing.Size(279, 196);
            this.listBoxPatrones.TabIndex = 4;
            // 
            // listBoxSeleccionarSeriePatron
            // 
            this.listBoxSeleccionarSeriePatron.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.listBoxSeleccionarSeriePatron.FormattingEnabled = true;
            this.listBoxSeleccionarSeriePatron.ItemHeight = 24;
            this.listBoxSeleccionarSeriePatron.Location = new System.Drawing.Point(3, 0);
            this.listBoxSeleccionarSeriePatron.Name = "listBoxSeleccionarSeriePatron";
            this.listBoxSeleccionarSeriePatron.Size = new System.Drawing.Size(323, 268);
            this.listBoxSeleccionarSeriePatron.TabIndex = 0;
            this.listBoxSeleccionarSeriePatron.SelectedIndexChanged += new System.EventHandler(this.listBoxSeleccionarSeriePatron_SelectedIndexChanged);
            // 
            // SantiMedia
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(774, 520);
            this.Controls.Add(this.tabControl);
            this.Name = "SantiMedia";
            this.Text = "Form1";
            this.tabControl.ResumeLayout(false);
            this.tabPageInicio.ResumeLayout(false);
            this.tabPageInicio.PerformLayout();
            this.tabPageEjecutarPartes.ResumeLayout(false);
            this.tabPageDatosSeries.ResumeLayout(false);
            this.tabControl1.ResumeLayout(false);
            this.tabPageAñadirSerie.ResumeLayout(false);
            this.panel5.ResumeLayout(false);
            this.panel5.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.tabPageAñadirPatron.ResumeLayout(false);
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button buttonOrdenaSeries;
        private System.Windows.Forms.Button buttonRecopilarVideos;
        private System.Windows.Forms.Button buttonRenombrar;
        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabPageInicio;
        private System.Windows.Forms.TabPage tabPageEjecutarPartes;
        private System.Windows.Forms.TabPage tabPageDatosSeries;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPageAñadirSerie;
        private System.Windows.Forms.TabPage tabPageModificarSerie;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.TextBox textBoxCapitulosTemporada;
        private System.Windows.Forms.TextBox textBoxNumeroTemporadas;
        private System.Windows.Forms.TextBox textBoxTemporadaActual;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.ComboBox comboBoxExtension;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.ComboBox comboBoxEstado;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox textBoxTitulo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button buttonAñadirSerie;
        private System.Windows.Forms.TabPage tabPageAñadirPatron;
        private System.Windows.Forms.ListBox listBoxSeleccionarSeriePatron;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Label labelAñadirPatron;
        private System.Windows.Forms.Button buttonAñadirPatron;
        private System.Windows.Forms.TextBox textBoxTextoPatron;
        private System.Windows.Forms.ListBox listBoxPatrones;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label labelNumPatrones;
    }
}

